.class public final enum Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;
.super Ljava/lang/Enum;
.source "NavigationModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModeOverlayReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum DEFER_GESTURE_OVERLAY_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum RESTORE_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum RESTORE_SEC_BUTTON_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum RESTORE_SEC_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum SET_NAVIGATION_MODE_UTIL:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum SWITCH_FROM_GESTURE_MODE_IF_NOT_SUPPORTED_BY_DEFAULT_LAUNCHER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum SWITCH_TO_BOTTOM_GESTURE_FOR_Q_OS_UPGRADE_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum SWITCH_TO_GESTURE_MODE_IF_NEED_RESTORE:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

.field public static final enum UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 120
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v1, 0x0

    const-string v2, "DEFER_GESTURE_OVERLAY_IF_NESSESARY"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->DEFER_GESTURE_OVERLAY_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v2, 0x1

    const-string v3, "UPDATE_INTERACTION_MODE_AS_OWNER_USER"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 122
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v3, 0x2

    const-string v4, "RESTORE_GESTURE_MODE_IF_NESSESARY"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v4, 0x3

    const-string v5, "RESTORE_SEC_BUTTON_MODE_IF_NESSESARY"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_BUTTON_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 124
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v5, 0x4

    const-string v6, "RESTORE_SEC_GESTURE_MODE_IF_NESSESARY"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v6, 0x5

    const-string v7, "SWITCH_TO_BOTTOM_GESTURE_FOR_Q_OS_UPGRADE_USER"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_BOTTOM_GESTURE_FOR_Q_OS_UPGRADE_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v7, 0x6

    const-string v8, "SWITCH_FROM_GESTURE_MODE_IF_NOT_SUPPORTED_BY_DEFAULT_LAUNCHER"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_FROM_GESTURE_MODE_IF_NOT_SUPPORTED_BY_DEFAULT_LAUNCHER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 127
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/4 v8, 0x7

    const-string v9, "SWITCH_TO_GESTURE_MODE_IF_NEED_RESTORE"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_GESTURE_MODE_IF_NEED_RESTORE:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 128
    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/16 v9, 0x8

    const-string v10, "SET_NAVIGATION_MODE_UTIL"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SET_NAVIGATION_MODE_UTIL:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    .line 119
    sget-object v10, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->DEFER_GESTURE_OVERLAY_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v10, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->UPDATE_INTERACTION_MODE_AS_OWNER_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_BUTTON_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->RESTORE_SEC_GESTURE_MODE_IF_NESSESARY:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_BOTTOM_GESTURE_FOR_Q_OS_UPGRADE_USER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_FROM_GESTURE_MODE_IF_NOT_SUPPORTED_BY_DEFAULT_LAUNCHER:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SWITCH_TO_GESTURE_MODE_IF_NEED_RESTORE:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->SET_NAVIGATION_MODE_UTIL:Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->$VALUES:[Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 119
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;
    .locals 1

    .line 119
    const-class v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;
    .locals 1

    .line 119
    sget-object v0, Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->$VALUES:[Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/NavigationModeController$ModeOverlayReason;

    return-object v0
.end method
