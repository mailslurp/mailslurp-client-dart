import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for GroupControllerApi
void main() {
  var instance = GroupControllerApi();

  group('tests for GroupControllerApi', () {
    // Add contacts to a group
    //
    //Future<GroupContactsDto> addContactsToGroup(String groupId, UpdateGroupContacts updateGroupContactsOption) async 
    test('test addContactsToGroup', () async {
      // TODO
    });

    // Create a group
    //
    //Future<GroupDto> createGroup(CreateGroupOptions createGroupOptions) async 
    test('test createGroup', () async {
      // TODO
    });

    // Delete group
    //
    //Future deleteGroup(String groupId) async 
    test('test deleteGroup', () async {
      // TODO
    });

    // Get all Contact Groups in paginated format
    //
    //Future<PageGroupProjection> getAllGroups({ int page, int size, String sort }) async 
    test('test getAllGroups', () async {
      // TODO
    });

    // Get group
    //
    //Future<GroupDto> getGroup(String groupId) async 
    test('test getGroup', () async {
      // TODO
    });

    // Get group and contacts belonging to it
    //
    //Future<GroupContactsDto> getGroupWithContacts(String groupId) async 
    test('test getGroupWithContacts', () async {
      // TODO
    });

    // Get group and paginated contacts belonging to it
    //
    //Future<PageContactProjection> getGroupWithContactsPaginated(String groupId, { int page, int size, String sort }) async 
    test('test getGroupWithContactsPaginated', () async {
      // TODO
    });

    // Get all groups
    //
    //Future<List<GroupProjection>> getGroups() async 
    test('test getGroups', () async {
      // TODO
    });

    // Remove contacts from a group
    //
    //Future<GroupContactsDto> removeContactsFromGroup(String groupId, UpdateGroupContacts updateGroupContactsOption) async 
    test('test removeContactsFromGroup', () async {
      // TODO
    });

  });
}
