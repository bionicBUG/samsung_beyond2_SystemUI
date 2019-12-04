.class final enum Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;
.super Ljava/lang/Enum;
.source "AppDockAppListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

.field public static final enum LOADING:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

.field public static final enum LOAD_COMPLETE:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

.field public static final enum NOT_LOADED:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    const/4 v1, 0x0

    const-string v2, "NOT_LOADED"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->NOT_LOADED:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    const/4 v2, 0x1

    const-string v3, "LOADING"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOADING:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    new-instance v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    const/4 v3, 0x2

    const-string v4, "LOAD_COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOAD_COMPLETE:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    sget-object v4, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->NOT_LOADED:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOADING:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->LOAD_COMPLETE:Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->$VALUES:[Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;
    .locals 1

    .line 112
    const-class v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;
    .locals 1

    .line 112
    sget-object v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->$VALUES:[Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    invoke-virtual {v0}, [Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/appdock/model/AppDockAppListLoader$State;

    return-object v0
.end method
