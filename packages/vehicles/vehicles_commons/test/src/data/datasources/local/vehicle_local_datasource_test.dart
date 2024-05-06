import 'package:common_deps/common_test_deps.dart';
import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uuid/uuid.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

class MockStorageClient extends Mock
    implements IStorageClient<List<VehicleModel>> {}

class MockUuid extends Mock implements Uuid {}

void main() {
  group('VehicleLocalDataSource', () {
    late VehicleLocalDataSource dataSource;
    late MockStorageClient mockStorageClient;
    late MockUuid mockUuid;
    final faker = Faker();

    setUp(() {
      mockStorageClient = MockStorageClient();
      mockUuid = MockUuid();
      dataSource = VehicleLocalDataSource(mockStorageClient);

      when(() => mockUuid.v4()).thenReturn(faker.guid.guid());
    });

    group('create', () {
      test('should create a vehicle', () async {
        when(() => mockStorageClient.read(any()))
            .thenAnswer((_) async => <VehicleModel>[]);

        final params = CreateVehicleParamsModel(
          name: faker.vehicle.model(),
          plate: faker.vehicle.vin(),
        );
        final result = await dataSource.create(params);

        expect(result.id, isNotNull);
        expect(result.name, params.name);
        expect(result.plate, params.plate);
      });
    });

    group('update', () {
      test('should update a vehicle', () async {
        final id = faker.guid.guid();

        when(() => mockStorageClient.read(any())).thenAnswer(
          (_) async => <VehicleModel>[
            VehicleModel(
              id: id,
              name: faker.vehicle.model(),
              plate: faker.vehicle.vin(),
            ),
          ],
        );

        final params = UpdateVehicleParamsModel(name: faker.vehicle.model());
        final result = await dataSource.update(id: id, params: params);

        expect(result.id, isNotNull);
        expect(result.name, params.name);
      });
    });

    group('delete', () {
      test('should delete a vehicle', () async {
        when(() => mockStorageClient.read(any())).thenAnswer(
          (_) async => [
            VehicleModel(
              id: faker.guid.guid(),
              name: faker.vehicle.model(),
              plate: faker.vehicle.vin(),
            ),
          ],
        );

        await dataSource.delete(faker.guid.guid());

        verify(() => mockStorageClient.save(any(), any())).called(1);
      });
    });

    group('getAll', () {
      test('should return a list of vehicles', () async {
        when(() => mockStorageClient.read(any())).thenAnswer(
          (_) async => List.generate(
            3,
            (_) => VehicleModel(
              id: faker.guid.guid(),
              name: faker.vehicle.model(),
              plate: faker.vehicle.vin(),
            ),
          ),
        );

        final result = await dataSource.getAll();

        expect(result, hasLength(3));
      });

      test('should return an empty list if storage is empty', () async {
        when(() => mockStorageClient.read(any())).thenAnswer((_) async => null);

        final result = await dataSource.getAll();

        expect(result, isEmpty);
      });
    });
  });
}
