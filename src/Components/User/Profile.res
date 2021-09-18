@react.component
let make = (~id: string) => {
    let user = ApiHooks.useUserData(id)

    <section className=" rounded bg-gray-100 p-2">
        <h1 className="font-bold"> 
            {React.string(`${user.userInfos.firstName} ${user.userInfos.lastName}`)} 
        </h1>
        <div className="flex gap-4">
            <p>{React.string(`Age: ${Belt.Int.toString(user.userInfos.age)} ans`)}</p>
            <p>{React.string(`Score: ${Belt.Float.toString(user.todayScore)}`)}</p>
            <p>{React.string(`Calories: ${Belt.Int.toString(user.keyData.calorieCount)}`)}</p>
        </div>
    </section>
}