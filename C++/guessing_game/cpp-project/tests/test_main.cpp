#include <gtest/gtest.h>
#include "../src/main.cpp"

TEST(MainFunctionTest, BasicAssertions) {
    // Here you can add assertions to test the functionality of the main function
    ASSERT_TRUE(true); // Placeholder assertion
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}