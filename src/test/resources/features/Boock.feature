@BookingAll
Feature: APIS from Booking

  Como usuario de Booking
  Quiero obtener la lista de bookings
  Para poder verificar los detalles de los registros

  @CP01_Booking @Booking
  Scenario: Obtener todas los booking exitosamente
    Given el actor establece el endpoint de booking
    When el actor realiza una solicitud GET
    Then el codigo de respuesta debe ser 200


  @CP02_Booking @Patch_Booking @Booking
  Scenario Outline: Crear un booking exitosamente
    Given el actor establece el endpoint de booking
    When el actor crea un booking con el "<firstname>" "<lastname>" "<totalprice>" "<depositpaid>" "<checkin>" "<checkout>" "<additionalneeds>"
    Then el codigo de respuesta debe ser 200

    Examples:
      | firstname | lastname | totalprice | depositpaid | checkin    | checkout   | additionalneeds |
      | Mario     | Castilla | 111        | true        | 2018-01-01 | 2019-01-01 | Breakfast       |