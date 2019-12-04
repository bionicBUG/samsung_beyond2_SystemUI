.class public final enum Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;
.super Ljava/lang/Enum;
.source "AppDockGridContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/appdock/view/AppDockGridContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridContentState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

.field public static final enum ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

.field public static final enum SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    const/4 v1, 0x0

    const-string v2, "ALLAPPS"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    new-instance v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    const/4 v2, 0x1

    const-string v3, "SEARCH"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    .line 23
    sget-object v3, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->ALLAPPS:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->SEARCH:Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->$VALUES:[Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;
    .locals 1

    .line 23
    const-class v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;
    .locals 1

    .line 23
    sget-object v0, Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->$VALUES:[Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    invoke-virtual {v0}, [Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/appdock/view/AppDockGridContentView$GridContentState;

    return-object v0
.end method
