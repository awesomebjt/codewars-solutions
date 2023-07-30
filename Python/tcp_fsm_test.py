import unittest
from tcp_fsm import traverse_TCP_states


class MyTestCase(unittest.TestCase):
    def test_fsm(self):
        self.assertEqual(traverse_TCP_states(["APP_ACTIVE_OPEN", "RCV_SYN_ACK", "RCV_FIN"]), "CLOSE_WAIT")
        self.assertEqual(traverse_TCP_states(["APP_PASSIVE_OPEN", "RCV_SYN", "RCV_ACK"]), "ESTABLISHED")
        self.assertEqual(traverse_TCP_states(["APP_ACTIVE_OPEN", "RCV_SYN_ACK", "RCV_FIN", "APP_CLOSE"]), "LAST_ACK")
        self.assertEqual(traverse_TCP_states(["APP_ACTIVE_OPEN"]), "SYN_SENT")
        self.assertEqual(traverse_TCP_states(["APP_PASSIVE_OPEN", "RCV_SYN", "RCV_ACK", "APP_CLOSE", "APP_SEND"]),
                           "ERROR")


if __name__ == '__main__':
    unittest.main()
