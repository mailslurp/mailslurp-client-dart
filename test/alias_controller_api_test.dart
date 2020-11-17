import 'package:mailslurp/api.dart';
import 'package:test/test.dart';


/// tests for AliasControllerApi
void main() {
  var instance = AliasControllerApi();

  group('tests for AliasControllerApi', () {
    // Create an email alias
    //
    // Create an email alias belonging to a user ID. To create anonymous aliases use the `createAnonymousAlias` method.
    //
    //Future createAlias(CreateOwnedAliasOptions createOwnedAliasOptions) async 
    test('test createAlias', () async {
      // TODO
    });

    // Create an anonymous email alias
    //
    //Future<Alias> createAnonymousAlias(CreateAnonymousAliasOptions createAnonymousAliasOptions) async 
    test('test createAnonymousAlias', () async {
      // TODO
    });

    // Delete an owned alias
    //
    //Future deleteAlias(String aliasId) async 
    test('test deleteAlias', () async {
      // TODO
    });

    // Get an email alias
    //
    // Get an email alias by ID
    //
    //Future<Alias> getAlias(String aliasId) async 
    test('test getAlias', () async {
      // TODO
    });

    // Get all email aliases
    //
    // Get all email aliases in paginated form
    //
    //Future<PageAlias> getAliases({ int page, int size, String sort }) async 
    test('test getAliases', () async {
      // TODO
    });

    // Update an owned alias
    //
    //Future updateAlias(String aliasId, CreateOwnedAliasOptions createOwnedAliasOptions) async 
    test('test updateAlias', () async {
      // TODO
    });

  });
}
