enum DayOfTheWeek {
  monday,
  tuesday,
  wednesday,
  thursday,
  friday,
  saturday,
  sunday,
}

DayOfTheWeek toDayType(String type) {
  switch (type) {
    case 'monday':
      return DayOfTheWeek.monday;
    case 'tuesday':
      return DayOfTheWeek.tuesday;
    case 'wednesday':
      return DayOfTheWeek.wednesday;
    case 'thursday':
      return DayOfTheWeek.thursday;
    case 'friday':
      return DayOfTheWeek.friday;
    case 'saturday':
      return DayOfTheWeek.saturday;
    case 'sunday':
      return DayOfTheWeek.sunday;
    default:
      return DayOfTheWeek.monday;
  }
}

extension DayTypeExtension on DayOfTheWeek {
  String toShortString() {
    return toString().split('.').last;
  }
}
