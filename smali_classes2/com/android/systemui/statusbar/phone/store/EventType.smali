.class public final enum Lcom/android/systemui/statusbar/phone/store/EventType;
.super Ljava/lang/Enum;
.source "EventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/phone/store/EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_NAVBAR_ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_INFLATE_BUTTON_SIDE_PADDING:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_BACK_GESTURE_ON_KEYBOARD_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_BACK_GESTURE_SENSITIVITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_BOOT_COMPLETE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_BROADCAST_HARD_KEY_INTENT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_CONFIG_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_DESKTOP_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_DISMISS_RECENTS_ONBOARDING_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_DISPATCH_POPULATE_A11Y_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_FRAGMENT_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_GESTURE_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_GESTURE_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_TYPE_CHANGED_FROM_NAVBAR_TILE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NAVBAR_WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_NIGHT_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_REMOTEVIEW_MANAGER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SAVE_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SET_DARK_ICONS:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SET_DISABLE_FLAGS:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SET_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SHOW_BUTTON_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_SHOW_GESTURE_RECENTS_ON_BOARDING_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_TINT_SAMPLING_TURNED_OFF:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

.field public static final enum ON_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v1, 0x0

    const-string v2, "ON_BOOT_COMPLETE"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BOOT_COMPLETE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v2, 0x1

    const-string v3, "ON_FRAGMENT_CREATED"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_FRAGMENT_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 14
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v3, 0x2

    const-string v4, "ON_REMOTEVIEW_MANAGER_CREATED"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOTEVIEW_MANAGER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v4, 0x3

    const-string v5, "ON_LIGHTBAR_CONTROLLER_CREATED"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v5, 0x4

    const-string v6, "ON_NAVBAR_ATTACHED_TO_WINDOW"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 18
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v6, 0x5

    const-string v7, "ON_NAVBAR_DETACHED_TO_WINDOW"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v7, 0x6

    const-string v8, "ON_NAVBAR_KNOX_POLICY_CHANGED"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 21
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/4 v8, 0x7

    const-string v9, "ON_HARD_KEY_INTENT_POLICY_CHANGED"

    invoke-direct {v0, v9, v8}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 22
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v9, 0x8

    const-string v10, "ON_NAVBAR_MODE_CHANGED"

    invoke-direct {v0, v10, v9}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 23
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v10, 0x9

    const-string v11, "ON_NAVBAR_TYPE_CHANGED"

    invoke-direct {v0, v11, v10}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v11, 0xa

    const-string v12, "ON_NAVBAR_STYLE_CHANGED"

    invoke-direct {v0, v12, v11}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v12, 0xb

    const-string v13, "ON_NAVBAR_CAN_MOVE_CHANGED"

    invoke-direct {v0, v13, v12}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v13, 0xc

    const-string v14, "ON_NAVBAR_ICON_HINT_CHANGED"

    invoke-direct {v0, v14, v13}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v14, 0xd

    const-string v15, "ON_OPEN_THEME_CHANGED"

    invoke-direct {v0, v15, v14}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v15, 0xe

    const-string v14, "ON_THEME_DEFAULT_CHANGED"

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 29
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_MIRROR_LINK_CHANGED"

    const/16 v15, 0xf

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 30
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_KEY_ORDER_CHANGED"

    const/16 v15, 0x10

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_WINDOW_FOCUS_CHANGED"

    const/16 v15, 0x11

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_NIGHT_MODE_CHANGED"

    const/16 v15, 0x12

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NIGHT_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_CONFIG_CHANGED"

    const/16 v15, 0x13

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CONFIG_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_GESTURE_HINT_CHANGED"

    const/16 v15, 0x14

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_GESTURE_TYPE_CHANGED"

    const/16 v15, 0x15

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED"

    const/16 v15, 0x16

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_BACK_GESTURE_ON_KEYBOARD_CHANGED"

    const/16 v15, 0x17

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_ON_KEYBOARD_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_DESKTOP_MODE_CHANGED"

    const/16 v15, 0x18

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DESKTOP_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 39
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_NAVBAR_LAYOUT_CONTAINER_CHANGED"

    const/16 v15, 0x19

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 41
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_SCREEN_INFO"

    const/16 v15, 0x1a

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 42
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_NAVBAR_COLOR"

    const/16 v15, 0x1b

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_REMOTEVIEW"

    const/16 v15, 0x1c

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 44
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_NAVBAR_DARK_INTENSITY"

    const/16 v15, 0x1d

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_NAVBAR_VIS_SYSUI_STATE"

    const/16 v15, 0x1e

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 47
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_RESET_GESTURE_HINT_VI"

    const/16 v15, 0x1f

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 48
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_START_GESTURE_HINT_VI"

    const/16 v15, 0x20

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_MOVE_GESTURE_HINT_VI"

    const/16 v15, 0x21

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SET_GESTURE_HINT_VISIBILITY"

    const/16 v15, 0x22

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 51
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_CHANGE_PAY_VISIBILITY"

    const/16 v15, 0x23

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_BROADCAST_HARD_KEY_INTENT"

    const/16 v15, 0x24

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BROADCAST_HARD_KEY_INTENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_ADD_GESTURE_INTERCEPT_WINDOW"

    const/16 v15, 0x25

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_REMOVE_GESTURE_INTERCEPT_WINDOW"

    const/16 v15, 0x26

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_RESTORE_TOUCH_EVENT"

    const/16 v15, 0x27

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_STR_CURRENT_LAYOUT"

    const/16 v15, 0x28

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 58
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_NAVBAR_COMPUTE_BAR_MODE"

    const/16 v15, 0x29

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 59
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_NAVBAR_RESTORE_BAR_MODE"

    const/16 v15, 0x2a

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_INFLATE_BUTTON_WIDTH"

    const/16 v15, 0x2b

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_INFLATE_BUTTON_SIDE_PADDING"

    const/16 v15, 0x2c

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_SIDE_PADDING:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_INFLATE_LAYOUT_ID"

    const/16 v15, 0x2d

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_DEADZONE_SIZE"

    const/16 v15, 0x2e

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_ROTATE_BUTTON_STYLE"

    const/16 v15, 0x2f

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_FLOATING_ROTATE_BUTTON_POSITION"

    const/16 v15, 0x30

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 66
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE"

    const/16 v15, 0x31

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_RESTORE_INSTANCE_FULLVIS_STATE"

    const/16 v15, 0x32

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_RESTORE_INSTANCE_ICONHINT_STATE"

    const/16 v15, 0x33

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 69
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_INT_NAVBAR_COLOR"

    const/16 v15, 0x34

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_NAVBAR_VIS_KNOX_POLICY"

    const/16 v15, 0x35

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 71
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY"

    const/16 v15, 0x36

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_THEME_DEFAULT"

    const/16 v15, 0x37

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_NAVBAR_LIGHT"

    const/16 v15, 0x38

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 74
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_NAVBAR_OPAQUE"

    const/16 v15, 0x39

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_NAVBAR_ICONS_DARK"

    const/16 v15, 0x3a

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 76
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_SHOW_KEYBOARD_BUTTON"

    const/16 v15, 0x3b

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 77
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_GESTURE_DISABLED_BY_POLICY"

    const/16 v15, 0x3c

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 78
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "GET_BOOL_GESTURE_BLOCK_ON_GAME"

    const/16 v15, 0x3d

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 80
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SET_BAR_STATE"

    const/16 v15, 0x3e

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 81
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SET_DISABLE_FLAGS"

    const/16 v15, 0x3f

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SET_REMOTEVIEW"

    const/16 v15, 0x40

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SET_DARK_ICONS"

    const/16 v15, 0x41

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DARK_ICONS:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_NAVBAR_ICON_MARQUEE"

    const/16 v15, 0x42

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 86
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_DISPATCH_POPULATE_A11Y_EVENT"

    const/16 v15, 0x43

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISPATCH_POPULATE_A11Y_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 87
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE"

    const/16 v15, 0x44

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_INVALIDATE_REMOTEVIEW"

    const/16 v15, 0x45

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 89
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SAVE_INSTANCE_STATE"

    const/16 v15, 0x46

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SAVE_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 90
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_UPDATE_TINT"

    const/16 v15, 0x47

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 91
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_TINT_SAMPLING_TURNED_OFF"

    const/16 v15, 0x48

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_TINT_SAMPLING_TURNED_OFF:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_RESTORE_NAVBAR_BAR_MODE"

    const/16 v15, 0x49

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 93
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_NAVBAR_WINDOW_STATE_CHANGED"

    const/16 v15, 0x4a

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 94
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SHOW_GESTURE_RECENTS_ON_BOARDING_POPUP"

    const/16 v15, 0x4b

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_RECENTS_ON_BOARDING_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 95
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP"

    const/16 v15, 0x4c

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_SHOW_BUTTON_KEYBOARD_TIP_POPUP"

    const/16 v15, 0x4d

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_BUTTON_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 97
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_DISMISS_RECENTS_ONBOARDING_TIP_POPUP"

    const/16 v15, 0x4e

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISMISS_RECENTS_ONBOARDING_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 98
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_BACK_GESTURE_SENSITIVITY_CHANGED"

    const/16 v15, 0x4f

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_SENSITIVITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 99
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED"

    const/16 v15, 0x50

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 100
    new-instance v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    const-string v14, "ON_NAVBAR_TYPE_CHANGED_FROM_NAVBAR_TILE"

    const/16 v15, 0x51

    invoke-direct {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/store/EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED_FROM_NAVBAR_TILE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v0, 0x52

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/store/EventType;

    .line 3
    sget-object v14, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BOOT_COMPLETE:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v14, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_FRAGMENT_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOTEVIEW_MANAGER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_LIGHTBAR_CONTROLLER_CREATED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ATTACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_DETACHED_TO_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_KNOX_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HARD_KEY_INTENT_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_STYLE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_CAN_MOVE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_OPEN_THEME_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_THEME_DEFAULT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MIRROR_LINK_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_KEY_ORDER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_WINDOW_FOCUS_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NIGHT_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CONFIG_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_HINT_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_GESTURE_TYPE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_HIDE_KEYBOARD_BUTTON_SETTING_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_ON_KEYBOARD_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DESKTOP_MODE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_LAYOUT_CONTAINER_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_SCREEN_INFO:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_DARK_INTENSITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_NAVBAR_VIS_SYSUI_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESET_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_MOVE_GESTURE_HINT_VI:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_GESTURE_HINT_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_CHANGE_PAY_VISIBILITY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BROADCAST_HARD_KEY_INTENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_ADD_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_REMOVE_GESTURE_INTERCEPT_WINDOW:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_TOUCH_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x27

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_STR_CURRENT_LAYOUT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COMPUTE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x29

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_RESTORE_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_WIDTH:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_BUTTON_SIDE_PADDING:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_INFLATE_LAYOUT_ID:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_DEADZONE_SIZE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x2f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_POSITION:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x30

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_FLOATING_ROTATE_BUTTON_DRAWABLE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x31

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_FULLVIS_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x32

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_RESTORE_INSTANCE_ICONHINT_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x33

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_INT_NAVBAR_COLOR:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x34

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_VIS_KNOX_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x35

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_ROTATE_BUTTON_DISABLE_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x36

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_THEME_DEFAULT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x37

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_LIGHT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x38

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_OPAQUE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x39

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_NAVBAR_ICONS_DARK:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_SHOW_KEYBOARD_BUTTON:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_DISABLED_BY_POLICY:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->GET_BOOL_GESTURE_BLOCK_ON_GAME:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_BAR_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DISABLE_FLAGS:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x3f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x40

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SET_DARK_ICONS:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x41

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_ICON_MARQUEE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x42

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISPATCH_POPULATE_A11Y_EVENT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x43

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_START_NAVBAR_REMOTEVIEW_MANAGER_SERVICE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x44

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_INVALIDATE_REMOTEVIEW:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x45

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SAVE_INSTANCE_STATE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x46

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_UPDATE_TINT:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x47

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_TINT_SAMPLING_TURNED_OFF:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x48

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_RESTORE_NAVBAR_BAR_MODE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x49

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_WINDOW_STATE_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_RECENTS_ON_BOARDING_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_GESTURE_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_SHOW_BUTTON_KEYBOARD_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4d

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_DISMISS_RECENTS_ONBOARDING_TIP_POPUP:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4e

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_SENSITIVITY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x4f

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_BACK_GESTURE_DISABLED_BY_POLICY_CHANGED:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x50

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/store/EventType;->ON_NAVBAR_TYPE_CHANGED_FROM_NAVBAR_TILE:Lcom/android/systemui/statusbar/phone/store/EventType;

    const/16 v2, 0x51

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->$VALUES:[Lcom/android/systemui/statusbar/phone/store/EventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/store/EventType;
    .locals 1

    .line 3
    const-class v0, Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/store/EventType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/store/EventType;
    .locals 1

    .line 3
    sget-object v0, Lcom/android/systemui/statusbar/phone/store/EventType;->$VALUES:[Lcom/android/systemui/statusbar/phone/store/EventType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/store/EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/store/EventType;

    return-object v0
.end method
