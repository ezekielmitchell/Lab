#include "project.h"
#include <gtest/gtest.h>

// Example utility function to be tested
int add(int a, int b) {
    return a + b;
}

// Test case for the add function
TEST(UtilsTest, AddFunction) {
    EXPECT_EQ(add(1, 2), 3);
    EXPECT_EQ(add(-1, 1), 0);
    EXPECT_EQ(add(-1, -1), -2);
}