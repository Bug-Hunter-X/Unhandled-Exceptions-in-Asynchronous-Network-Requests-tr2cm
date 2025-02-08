# Unhandled Exceptions in Asynchronous Network Requests

This repository showcases a common error in Dart: inadequate handling of exceptions during asynchronous network operations. The provided code demonstrates how to make a network request using the `http` package but lacks comprehensive error handling. This can lead to crashes or unexpected behavior in your application.

The `bug.dart` file contains the initial code with the error, while `bugSolution.dart` shows the improved version with more robust error handling and better exception management.  This includes specific exception handling (e.g., for timeouts) and more informative error messages.