import 'package:dio/dio.dart';
import 'package:example/src/gen/clients/clients.dart';

class ApiClient {
  ApiClient(this._dio);

  final Dio _dio;

  DevClient get dev {
    return DevClient(_dio);
  }

  SettingsClient get settings {
    return SettingsClient(_dio);
  }

  FilesClient get files {
    return FilesClient(_dio);
  }

  StudentAuthClient get studentAuth {
    return StudentAuthClient(_dio);
  }

  StudentVerificationClient get studentVerification {
    return StudentVerificationClient(_dio);
  }

  StudentResetPasswordClient get studentResetPassword {
    return StudentResetPasswordClient(_dio);
  }

  StudentProfileClient get studentProfile {
    return StudentProfileClient(_dio);
  }

  StudentRegistrationClient get studentRegistration {
    return StudentRegistrationClient(_dio);
  }

  StudentAdmissionsClient get studentAdmissions {
    return StudentAdmissionsClient(_dio);
  }

  StudentAttendancesClient get studentAttendances {
    return StudentAttendancesClient(_dio);
  }

  StudentWeeklySchedulesClient get studentWeeklySchedules {
    return StudentWeeklySchedulesClient(_dio);
  }

  StudentNotificationsClient get studentNotifications {
    return StudentNotificationsClient(_dio);
  }

  StudentFeesTypesClient get studentFeesTypes {
    return StudentFeesTypesClient(_dio);
  }

  StudentFeesClient get studentFees {
    return StudentFeesClient(_dio);
  }

  StudentSpecializationsClient get studentSpecializations {
    return StudentSpecializationsClient(_dio);
  }

  StudentGovernoratesClient get studentGovernorates {
    return StudentGovernoratesClient(_dio);
  }

  StudentStudyYearsClient get studentStudyYears {
    return StudentStudyYearsClient(_dio);
  }

  StudentNationalitiesClient get studentNationalities {
    return StudentNationalitiesClient(_dio);
  }

  StudentHomeClient get studentHome {
    return StudentHomeClient(_dio);
  }

  StudentReligionsClient get studentReligions {
    return StudentReligionsClient(_dio);
  }

  StudentNationalismsClient get studentNationalisms {
    return StudentNationalismsClient(_dio);
  }

  StudentCountriesClient get studentCountries {
    return StudentCountriesClient(_dio);
  }

  StudentMajorsClient get studentMajors {
    return StudentMajorsClient(_dio);
  }

  StudentSelectedCoursesClient get studentSelectedCourses {
    return StudentSelectedCoursesClient(_dio);
  }

  StudentInformationStatusClient get studentInformationStatus {
    return StudentInformationStatusClient(_dio);
  }

  StudentEkycClient get studentEkyc {
    return StudentEkycClient(_dio);
  }

  StudentPaymentsClient get studentPayments {
    return StudentPaymentsClient(_dio);
  }

  StudentOSClient get studentOS {
    return StudentOSClient(_dio);
  }

  StudentSummaryClient get studentSummary {
    return StudentSummaryClient(_dio);
  }

  StudentCoursesClient get studentCourses {
    return StudentCoursesClient(_dio);
  }

  StudentInformationBureausClient get studentInformationBureaus {
    return StudentInformationBureausClient(_dio);
  }

  StudentHomeWorksClient get studentHomeWorks {
    return StudentHomeWorksClient(_dio);
  }

  StudentSemestersClient get studentSemesters {
    return StudentSemestersClient(_dio);
  }

  StudentOrdersClient get studentOrders {
    return StudentOrdersClient(_dio);
  }

  StudentAttachmentsClient get studentAttachments {
    return StudentAttachmentsClient(_dio);
  }

  LecturerAuthClient get lecturerAuth {
    return LecturerAuthClient(_dio);
  }

  LecturerCoursesClient get lecturerCourses {
    return LecturerCoursesClient(_dio);
  }

  LecturerAnnouncementsClient get lecturerAnnouncements {
    return LecturerAnnouncementsClient(_dio);
  }

  LecturerAssignmentsClient get lecturerAssignments {
    return LecturerAssignmentsClient(_dio);
  }

  LecturerCalenderClient get lecturerCalender {
    return LecturerCalenderClient(_dio);
  }

  LecturerAttendancesClient get lecturerAttendances {
    return LecturerAttendancesClient(_dio);
  }

  LecturerWeeklySchedulesClient get lecturerWeeklySchedules {
    return LecturerWeeklySchedulesClient(_dio);
  }

  LecturerIdsClient get lecturerIds {
    return LecturerIdsClient(_dio);
  }

  LecturerFamilyInfoClient get lecturerFamilyInfo {
    return LecturerFamilyInfoClient(_dio);
  }

  LecturerProfileClient get lecturerProfile {
    return LecturerProfileClient(_dio);
  }
}
