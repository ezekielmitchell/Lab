'''
Asyncronous programming is a style of programming that allows code to run without blocking other code from running. 
This is useful when you have code that takes a long time to run, such as code that makes a network request or reads a file. 
In a synchronous program, the code would block the rest of the program from running until it completes. 
In an asynchronous program, the code can run in the background while the rest of the program continues to run.
'''

import asyncio

# Coroutine function
async def fetch_data(id, delay):
    print(f"Coroutine id {id} starting to fetch data...")
    await asyncio.sleep(delay)
    return {"id ": id, "Data: " : f"Sample data from coroutine id {id}"}

async def main():
    ### METHOD 1
    # Create tasks for running coroutine concurrently
    # task1 = asyncio.create_task(fetch_data(1, 3))
    # task2 = asyncio.create_task(fetch_data(2, 1))
    # task3 = asyncio.create_task(fetch_data(3, 2))

    # result1 = await task1
    # result2 = await task2
    # result3 = await task3

    # print(result1, result2, result3)

    ### METHOD 2
    # results = await asyncio.gather(fetch_data(1, 3), fetch_data(2, 1), fetch_data(3, 2))

    # for result in results:
    #     print(result)

    ### METHOD 3
    tasks = []

    async with asyncio.TaskGroup() as tg:
        for i, sleep_time in enumerate([1,2,3], start=1):
            task = tg.create_task(fetch_data(i, sleep_time))
            tasks.append(task)

    # After the Task Group block, all tasks gave completed
    results = [task.result() for task in tasks]

    for result in results:
        print(result)








# Run the main coroutine.
asyncio.run(main())
