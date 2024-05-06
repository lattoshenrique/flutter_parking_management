import 'package:common_deps/common_test_deps.dart';
import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:parking_commons/parking_commons.dart';
import 'package:vehicles_commons/vehicles_commons.dart';

class MockStorageClient extends Mock
    implements IStorageClient<List<ParkingModel>> {}

void main() {
  group('ParkingLocalDataSource', () {
    late ParkingLocalDataSource dataSource;
    late MockStorageClient mockStorageClient;

    setUp(() {
      mockStorageClient = MockStorageClient();
      dataSource = ParkingLocalDataSource(mockStorageClient);
    });

    group('create', () {
      test('should create a new parking', () async {
        // Arrange
        final faker = Faker();
        final params = CreateParkingParamsModel(name: faker.lorem.word());
        final expectedParking =
            ParkingModel(id: faker.guid.guid(), name: params.name);

        when(() => mockStorageClient.read(any()))
            .thenAnswer((_) => Future.value(null));
        when(() => mockStorageClient.save(any(), any()))
            .thenAnswer((_) => Future.value());

        // Act
        final result = await dataSource.create(params);

        // Assert
        expect(result.name, equals(expectedParking.name));
        verify(() => mockStorageClient.save(any(), any())).called(1);
      });
    });

    group('getAll', () {
      test('should return a list of parking models', () async {
        // Arrange
        final faker = Faker();
        final mockParkingList = [
          ParkingModel(id: faker.guid.guid(), name: faker.lorem.word()),
        ];

        when(() => mockStorageClient.read(any()))
            .thenAnswer((_) => Future.value(mockParkingList));

        // Act
        final result = await dataSource.getAll();

        // Assert
        expect(result, equals(mockParkingList));
      });
    });

    group('createOrder', () {
      test('should create a new order for a parking', () async {
        // Arrange
        final faker = Faker();
        final params = CreateParkingOrderParamsModel(
          parkingId: faker.guid.guid(),
          vehicle: VehicleModel(
            id: faker.guid.guid(),
            name: faker.vehicle.model(),
            plate: faker.vehicle.vin(),
          ),
        );
        final mockParkingList = [
          ParkingModel(
            id: params.parkingId,
            name: faker.lorem.word(),
            orders: [],
          ),
        ];

        when(() => mockStorageClient.read(any()))
            .thenAnswer((_) => Future.value(mockParkingList));
        when(() => mockStorageClient.save(any(), any()))
            .thenAnswer((_) => Future.value());

        // Act
        final result = await dataSource.createOrder(params);

        // Assert
        expect(result.vehicle.id, equals(params.vehicle.id));
        expect(result.vehicle.name, equals(params.vehicle.name));
        expect(result.vehicle.plate, equals(params.vehicle.plate));
        verify(() => mockStorageClient.save(any(), any())).called(1);
      });
    });

    group('updateOrder', () {
      test('should update an existing order for a parking', () async {
        // Arrange
        final faker = Faker();
        final params =
            UpdateParkingOrderParamsModel(departureDate: DateTime.now());
        final mockParkingList = [
          ParkingModel(
            id: faker.guid.guid(),
            name: faker.lorem.word(),
            orders: [
              ParkingOrderModel(
                id: faker.guid.guid(),
                entryDate: faker.date.dateTime(),
                vehicle: VehicleModel(
                  id: faker.guid.guid(),
                  name: faker.vehicle.model(),
                  plate: faker.vehicle.vin(),
                ),
              ),
            ],
          ),
        ];

        when(() => mockStorageClient.read(any()))
            .thenAnswer((_) => Future.value(mockParkingList));
        when(() => mockStorageClient.save(any(), any()))
            .thenAnswer((_) => Future.value());

        // Act
        final result = await dataSource.updateOrder(
          parkingId: mockParkingList.first.id,
          orderId: mockParkingList.first.orders.first.id,
          params: params,
        );

        // Assert
        expect(result.departureDate, isNotNull);
        verify(() => mockStorageClient.save(any(), any())).called(1);
      });
    });
  });
}
