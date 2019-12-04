.class public final enum Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
.super Ljava/lang/Enum;
.source "PhoneStatusBarClockManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "POSITION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

.field public static final enum RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v2, 0x1

    const-string v3, "LEFT"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v3, 0x2

    const-string v4, "MIDDLE"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v4, 0x3

    const-string v5, "RIGHT"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    sget-object v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->NONE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->LEFT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->MIDDLE:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->RIGHT:Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->$VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 1

    .line 44
    const-class v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->$VALUES:[Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/PhoneStatusBarClockManager$POSITION;

    return-object v0
.end method
