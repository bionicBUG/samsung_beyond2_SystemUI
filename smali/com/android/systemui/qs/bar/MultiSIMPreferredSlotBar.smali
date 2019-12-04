.class public Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.super Lcom/android/systemui/qs/bar/BarItemImpl;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;,
        Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
    }
.end annotation


# static fields
.field private static final DISABLED_ALPHA:F = 0.4f

.field private static final ESIMQsPrefferedBtnImage:[I

.field private static final IDLE:I = 0x0

.field private static final INTERNAL_URI:Landroid/net/Uri;

.field private static final INVALID_VALUE:I = -0x1

.field private static final KEY_ERROR:Ljava/lang/String; = "error"

.field private static final KEY_RESULT:Ljava/lang/String; = "result"

.field private static final KEY_SUCCESS:Ljava/lang/String; = "success"

.field private static final MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON:I = 0x3e8

.field public static final MULTI_SIM_BAR_SHOW_ON_QSPANEL:Ljava/lang/String; = "multi_sim_bar_show_on_qspanel"

.field private static final NETOWRKMODECHANGE_MAX_TIMEOUT:I = 0xea60

.field private static final NORMAL_ALPHA:F = 1.0f

.field private static final OFFHOOK:I = 0x2

.field private static final QsPrefferedBtnImage:[I

.field private static final RINGING:I = 0x1

.field private static final SIMSELECT_LIST_ASKALLAWAY:I = 0x0

.field private static final SIMSELECT_LIST_OTHERS:I = 0x3

.field private static final SIMSELECT_LIST_SIM1:I = 0x1

.field private static final SIMSELECT_LIST_SIM2:I = 0x2

.field private static final SIMSLOT1:I = 0x0

.field private static final SIMSLOT2:I = 0x1

.field private static final SOFTSIM_PKG:Ljava/lang/String; = "com.samsung.android.globalroaming"

.field private static final SOFTSIM_PROPERTY:Ljava/lang/String; = "persist.sys.softsim.status"

.field private static final SOFTSIM_STATUS_DEFAULT:I = 0x9

.field private static final SOFTSIM_STATUS_DISABLE:I = 0x0

.field private static final SOFTSIM_STATUS_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MultiSIMPreferredSlotBar"


# instance fields
.field private Netchangefinished:Z

.field private SimImageIdx:[I

.field private SimName:[Ljava/lang/String;

.field private SimState_1:Ljava/lang/String;

.field private SimState_2:Ljava/lang/String;

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private mAirplaneMode:Z

.field private mAlphaEnabled:Z

.field private mCTCforceoff:Z

.field private mChangedByDataButton:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mDataBlockedForSim1:Z

.field private mDataBlockedForSim2:Z

.field private mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultDataSimId:I

.field private mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultSmsSimId:I

.field private mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

.field private mDefaultVoiceSimId:I

.field mInitViewDone:Z

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsMultiSIMBarShowOnQSPanel:Z

.field private mIsSRoaming:Z

.field private mMobileDataChanging:Z

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobileDataSettingEnabled:Z

.field private mMultisimBarRootView:Landroid/widget/LinearLayout;

.field private mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field mParent:Landroid/view/ViewGroup;

.field private mPopupNormalTextColor:I

.field private mPopupSelectedTextColor:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mPopupWindowTopMargin:I

.field private mPreferedVoiceObserver:Landroid/database/ContentObserver;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSettingsValueList:[Landroid/net/Uri;

.field mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

.field mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

.field private mSlotButtonGroup:Landroid/widget/LinearLayout;

.field private mSlotButtonTextColor:I

.field private mSlotButtons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSlotListAskButtonGroup:Landroid/view/ViewGroup;

.field private mSlotListAskButtonText:Landroid/widget/TextView;

.field private mSlotListButton1Group:Landroid/view/ViewGroup;

.field private mSlotListButton2Group:Landroid/view/ViewGroup;

.field private mSlotListButtonImage1:Landroid/widget/ImageView;

.field private mSlotListButtonImage2:Landroid/widget/ImageView;

.field private mSlotListButtonText1:Landroid/widget/TextView;

.field private mSlotListButtonText2:Landroid/widget/TextView;

.field private mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

.field private mSlotListOthersButtonText:Landroid/widget/TextView;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUIHandler:Landroid/os/Handler;

.field private simSlotIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v0, 0x9

    new-array v1, v0, [I

    .line 186
    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_2:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_call:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_sms:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_mms:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_internet:I

    const/4 v8, 0x5

    aput v2, v1, v8

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_home:I

    const/4 v9, 0x6

    aput v2, v1, v9

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_office:I

    const/4 v10, 0x7

    aput v2, v1, v10

    sget v2, Lcom/android/systemui/R$drawable;->quick_panel_icon_preffered_slot_heart:I

    const/16 v11, 0x8

    aput v2, v1, v11

    sput-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    new-array v0, v0, [I

    .line 198
    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_1:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_2:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_call:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_sms:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_mms:I

    aput v1, v0, v7

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_internet:I

    aput v1, v0, v8

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_home:I

    aput v1, v0, v9

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_office:I

    aput v1, v0, v10

    sget v1, Lcom/android/systemui/R$drawable;->quick_panel_icon_esim_preffered_slot_heart:I

    aput v1, v0, v11

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->ESIMQsPrefferedBtnImage:[I

    const-string v0, "content://com.samsung.android.app.telephonyui.internal"

    .line 642
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->INTERNAL_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 406
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 136
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    const/4 v0, 0x0

    .line 140
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    .line 141
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    .line 144
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    .line 145
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    .line 147
    iput v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    .line 148
    iput v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    .line 149
    iput v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    const/4 v2, 0x2

    new-array v3, v2, [I

    .line 210
    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const-string v3, "SIM 1"

    const-string v4, "SIM 2"

    .line 215
    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    .line 220
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    .line 221
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->Netchangefinished:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCTCforceoff:Z

    .line 229
    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$1;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 241
    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$2;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$3;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    .line 355
    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$4;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$4;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 365
    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$5;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "emergency_mode"

    .line 381
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v3, "airplane_mode_on"

    .line 382
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    .line 384
    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$6;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 407
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 409
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 411
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 412
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.settings.SIMCARD_MGT"

    .line 414
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    .line 415
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

    .line 417
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"

    .line 418
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 419
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    .line 420
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    .line 421
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGE_SUCCESS"

    .line 423
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.samsung.action.ACTION_NETWORK_SLOT_CHANGING_FINISH"

    .line 424
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PHONE_STATE"

    .line 428
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.samsung.android.softsim.ServiceStatus"

    .line 432
    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 435
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 441
    sget-object p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateCurruntDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    .line 442
    sget-object p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateCurruntDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    .line 443
    sget-object p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateCurruntDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    .line 445
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_1"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, p1, v0

    .line 446
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_1"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v0

    .line 447
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_icon_2"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, p1, v1

    .line 448
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "select_name_2"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    .line 450
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "prefered_voice_call"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 452
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 455
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    invoke-virtual {p1, v0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 456
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsValueList:[Landroid/net/Uri;

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;->onChanged(Landroid/net/Uri;)V

    .line 458
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSRoamingVirtualSlot()I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 459
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    .line 462
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 464
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 466
    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 468
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 471
    const-class p1, Lcom/android/systemui/tuner/TunerService;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/tuner/TunerService;

    const-string v0, "multi_sim_bar_show_on_qspanel"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateCurruntDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/widget/PopupWindow;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSRoamingVirtualSlot()I

    move-result p0

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsSRoaming:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return p0
.end method

.method static synthetic access$1702(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataChanging:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return p0
.end method

.method static synthetic access$1802(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->setDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    return p0
.end method

.method static synthetic access$2300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    return p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    return p0
.end method

.method static synthetic access$2800(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->checkCall()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isMMSuse()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method static synthetic access$3200()[I
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;I)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isESIM(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$3400()[I
    .locals 1

    .line 87
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->ESIMQsPrefferedBtnImage:[I

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonTextColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z
    .locals 0

    .line 87
    iput-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mChangedByDataButton:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Landroid/os/Handler;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[I
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)[Ljava/lang/String;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Ljava/util/ArrayList;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    return-object p0
.end method

.method private calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v0, v0, [I

    .line 992
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 993
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 994
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    const/4 v3, 0x0

    .line 996
    invoke-virtual {p2, v3, v3}, Landroid/view/View;->measure(II)V

    .line 997
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    .line 998
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    .line 1000
    iget-object v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1001
    iget-object v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1003
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    const/4 v7, 0x1

    .line 1005
    aget v8, v0, v7

    sub-int/2addr v5, v8

    sub-int/2addr v5, p0

    if-ge v5, v4, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v3

    .line 1006
    :goto_0
    aget v8, v0, v3

    sub-int/2addr v6, v8

    if-ge v6, p2, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 1008
    aget p0, v0, v3

    add-int/2addr p0, p1

    sub-int/2addr p0, p2

    goto :goto_2

    :cond_2
    aget p0, v0, v3

    :goto_2
    aput p0, v1, v3

    .line 1009
    aget p0, v0, v7

    add-int/2addr p0, v2

    sub-int/2addr p0, v4

    aput p0, v1, v7

    goto :goto_4

    :cond_3
    if-eqz v6, :cond_4

    .line 1011
    aget v2, v0, v3

    add-int/2addr v2, p1

    sub-int/2addr v2, p2

    goto :goto_3

    :cond_4
    aget v2, v0, v3

    :goto_3
    aput v2, v1, v3

    .line 1012
    aget p1, v0, v7

    add-int/2addr p1, p0

    aput p1, v1, v7

    :goto_4
    return-object v1
.end method

.method private checkCall()Z
    .locals 5

    .line 1104
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSubId(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v0

    .line 1105
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSubId(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    .line 1106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Check Call SIM1 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", SIM2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "MultiSIMPreferredSlotBar"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v3, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-eq p0, v3, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v3
.end method

.method private createSlotListPopupWindow()V
    .locals 4

    .line 764
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$layout;->sec_qs_panel_multi_sim_preffered_slot_popup_menu:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 765
    sget v1, Lcom/android/systemui/R$id;->slot1_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    .line 766
    sget v1, Lcom/android/systemui/R$id;->slot1_button_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    .line 767
    sget v1, Lcom/android/systemui/R$id;->slot1_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    .line 769
    sget v1, Lcom/android/systemui/R$id;->slot2_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    .line 770
    sget v1, Lcom/android/systemui/R$id;->slot2_button_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    .line 771
    sget v1, Lcom/android/systemui/R$id;->slot2_button_image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    .line 773
    sget v1, Lcom/android/systemui/R$id;->ask_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    .line 774
    sget v1, Lcom/android/systemui/R$id;->ask_button_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    .line 776
    sget v1, Lcom/android/systemui/R$id;->others_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    .line 777
    sget v1, Lcom/android/systemui/R$id;->others_button_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonText:Landroid/widget/TextView;

    .line 779
    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 781
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$drawable;->sec_qs_panel_multi_sim_popup_menu_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 782
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_multisim_popup_menu_elevation:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 783
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 785
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateSlotListPopupContents()V

    return-void
.end method

.method private dimissSlotListPopupWindow()V
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method private getCurrentVoiceSlotByMethodCall()I
    .locals 7

    const-string v0, ", "

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "getCurrentVoiceCall"

    const/4 v3, 0x0

    .line 679
    :try_start_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 680
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v5, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->INTERNAL_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v2, v6, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    .line 682
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle is null : "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    const-string/jumbo v4, "success"

    .line 686
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v5, "result"

    .line 687
    invoke-virtual {p0, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 688
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private getPhoneId(I)I
    .locals 0

    .line 699
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    return p0
.end method

.method private final getSRoamingStatus(Ljava/lang/String;)I
    .locals 0

    const-string p0, "activating"

    .line 1115
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "activated"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    const-string p0, "deactivating"

    .line 1117
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "deactivated"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/16 p0, 0x9

    goto :goto_2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method private getSRoamingVirtualSlot()I
    .locals 7

    .line 1072
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.globalroaming"

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x9

    if-eqz v0, :cond_3

    const-string v0, "MultiSIMPreferredSlotBar"

    const-string v2, "has sroaming package"

    .line 1073
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "default"

    const/4 v3, 0x0

    const-string v4, "persist.sys.softsim.status"

    .line 1075
    invoke-static {v4, v3, v2}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    .line 1076
    invoke-static {v4, v6, v2}, Lcom/android/systemui/util/DeviceState;->getMSimSystemProperty(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1077
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSRoamingStatus(Ljava/lang/String;)I

    move-result v4

    .line 1078
    invoke-direct {p0, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getSRoamingStatus(Ljava/lang/String;)I

    move-result p0

    if-eq v4, v6, :cond_1

    if-ne p0, v6, :cond_0

    goto :goto_0

    :cond_0
    if-nez v4, :cond_2

    if-nez p0, :cond_2

    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v6

    .line 1084
    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sroaming status : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1
.end method

.method private getSubId(I)I
    .locals 0

    .line 1062
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1063
    array-length p1, p0

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 1064
    aget p0, p0, p1

    return p0

    :cond_0
    const-string p0, "MultiSIMPreferredSlotBar"

    const-string p1, "getSubId: no valid subs"

    .line 1066
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method private hasPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 p0, 0x0

    const-string v0, "MultiSIMPreferredSlotBar"

    if-nez p1, :cond_0

    .line 1125
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "context is null : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 1128
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x1

    const/16 v2, 0x80

    .line 1132
    :try_start_0
    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, v1

    goto :goto_0

    .line 1135
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package not found : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method

.method private initBarViews(Landroid/view/ViewGroup;)V
    .locals 5

    .line 488
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    return-void

    .line 490
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->multi_sim_bar_root:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMultisimBarRootView:Landroid/widget/LinearLayout;

    .line 491
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 492
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->slot_button_group:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    .line 493
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_text_color:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonTextColor:I

    .line 495
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v0, Lcom/android/systemui/R$id;->preffered_voice_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 496
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v2, v3, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    .line 497
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 500
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->preffered_sms_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 501
    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    .line 502
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    sget v2, Lcom/android/systemui/R$id;->preffered_data_button:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 504
    new-instance v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    sget-object v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3, v4, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    .line 505
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 512
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 513
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonGroup:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string p1, "0"

    const-string v2, "ril.ICC_TYPE"

    .line 514
    invoke-static {v0, v2, p1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_1:Ljava/lang/String;

    const/4 v0, 0x1

    .line 515
    invoke-static {v0, v2, p1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimState_2:Ljava/lang/String;

    .line 516
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$dimen;->qs_multisim_popup_menu_top_margin:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindowTopMargin:I

    .line 517
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_popup_text_color:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    .line 518
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v2, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_popup_text_color_select:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    .line 521
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarMagins()V

    .line 522
    iput-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInitViewDone:Z

    return-void
.end method

.method private isBlockedAllMultiSimBar()Z
    .locals 1

    .line 1142
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_FIRST_SIM_LOCK:Z

    if-eqz p0, :cond_0

    const-string p0, "ril.lockpolicy"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 1143
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isBlockedEdmSettingsChange()Z

    move-result p0

    if-nez p0, :cond_2

    const-class p0, Lcom/android/systemui/KnoxStateMonitor;

    .line 1144
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/KnoxStateMonitor;->isUserMobileDataRestricted()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isDataBlocked(I)Z
    .locals 2

    .line 1027
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    const/4 v0, 0x0

    const-string v1, "MultiSIMPreferredSlotBar"

    if-eqz p0, :cond_0

    .line 1029
    :try_start_0
    invoke-interface {p0, p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->isDefaultDataSlotAllowed(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Caught exception from isDataBlocked"

    .line 1031
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    :cond_0
    const-string p0, "isDataBlocked : mSimCardmanagerSerice is null."

    .line 1035
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isESIM(I)Z
    .locals 1

    .line 1090
    sget-boolean p0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ESIM:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz p0, :cond_0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isMMSuse()Z
    .locals 3

    .line 1094
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x1

    const-string v1, "multi_sim_datacross_slot"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMMSuse ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiSIMPreferredSlotBar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSupportCallpreferredOthers()Z
    .locals 4

    .line 1148
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 1150
    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v1

    .line 1152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 1153
    invoke-virtual {p0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1156
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getCapabilities()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    move v3, v0

    :cond_1
    if-nez v3, :cond_0

    const-string p0, "MultiSIMPreferredSlotBar"

    const-string v1, "Support Call preferred Others"

    .line 1158
    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    return v3
.end method

.method private launchSimManager()V
    .locals 4

    .line 1047
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isBlockedAllMultiSimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1049
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "onClick()"

    .line 1050
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v2, "com.samsung.android.app.telephonyui"

    const-string v3, "com.samsung.android.app.telephonyui.netsettings.ui.simcardmanager.SimCardMgrActivity"

    .line 1053
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x10008000

    .line 1054
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1055
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v2, 0x0

    invoke-interface {p0, v0, v2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "activity not found"

    .line 1057
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private registerSimCardManagerCallback()V
    .locals 2

    .line 547
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getSimCardManagerServiceCallback()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    .line 548
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    const-string v1, "MultiSIMPreferredSlotBar"

    if-nez v0, :cond_1

    .line 549
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$7;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    .line 561
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-eqz v0, :cond_0

    .line 563
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->registerSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Caught exception from registerSimCardManagerCallback"

    .line 565
    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "registerSimCardManagerCallback : mSimCardmanagerSerice is null "

    .line 568
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "registerSimCardManagerCallback : mSimCardCallback is not null "

    .line 571
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private removeRemainMessage()V
    .locals 1

    .line 1041
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mUIHandler:Landroid/os/Handler;

    if-eqz p0, :cond_0

    const/16 v0, 0x3e8

    .line 1042
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private setDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V
    .locals 1

    .line 621
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDefaultSlot : type = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", slotId = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiSIMPreferredSlotBar"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->getIndex()I

    move-result p0

    invoke-static {p0, p2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->setChangeSimCardManagerSlot(II)Z

    .line 630
    sget-object p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, p0, :cond_0

    const-string p0, "4303"

    goto :goto_0

    .line 632
    :cond_0
    sget-object p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, p0, :cond_1

    const-string p0, "4304"

    goto :goto_0

    .line 634
    :cond_1
    sget-object p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, p0, :cond_2

    const-string p0, "4305"

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    .line 637
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private setDefaultSlotByMethodCall(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V
    .locals 6

    const-string v0, ", "

    const-string v1, "MultiSIMPreferredSlotBar"

    const-string v2, "quickpanel_simcard_change"

    .line 649
    sget-object v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    const-string p1, "PREFERRED_VOICE_CALLS"

    goto :goto_0

    .line 651
    :cond_0
    sget-object v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v3, :cond_1

    const-string p1, "PREFERRED_TEXT_MESSAGES"

    goto :goto_0

    .line 653
    :cond_1
    sget-object v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v3, :cond_2

    const-string p1, "PREFERRED_MOBILE_DATA"

    goto :goto_0

    :cond_2
    move-object p1, v4

    .line 658
    :goto_0
    :try_start_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v5, "changeType"

    .line 659
    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "selectItem"

    .line 660
    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->INTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v2, v4, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_3

    .line 664
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "bundle is null : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const-string/jumbo p1, "success"

    .line 668
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    const-string p2, "error"

    .line 669
    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    .line 670
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 672
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 7

    .line 808
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isBlockedAllMultiSimBar()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-nez v0, :cond_1

    .line 811
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->createSlotListPopupWindow()V

    .line 813
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 814
    iput-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    .line 815
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 816
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 817
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_2
    const/4 v0, 0x0

    .line 822
    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v5, :cond_b

    if-eq v2, v4, :cond_9

    if-eq v2, v3, :cond_3

    goto/16 :goto_6

    .line 900
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    .line 901
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isDataBlocked(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    .line 902
    invoke-direct {p0, v5}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isDataBlocked(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    .line 903
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$14;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$14;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 935
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataSettingEnabled:Z

    if-nez v2, :cond_4

    .line 936
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 937
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 938
    :cond_4
    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    if-nez v2, :cond_5

    .line 939
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 940
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_6

    .line 942
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 943
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 945
    :cond_6
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim1:Z

    const v3, 0x3ecccccd    # 0.4f

    if-eqz v2, :cond_7

    .line 946
    iput-boolean v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    .line 947
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 948
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 950
    :cond_7
    iget-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDataBlockedForSim2:Z

    if-eqz v2, :cond_8

    .line 951
    iput-boolean v5, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mAlphaEnabled:Z

    .line 952
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 953
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 957
    :cond_8
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4302"

    invoke-static {v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 869
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    .line 870
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$12;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 878
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$13;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$13;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 886
    iget v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    if-nez v2, :cond_a

    .line 887
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 888
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 890
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 891
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 895
    :goto_1
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4301"

    invoke-static {v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 824
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceButton:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->getButtonTypeGroup()Landroid/view/View;

    move-result-object v0

    .line 825
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$8;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$8;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 833
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$9;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$9;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 841
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$10;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$10;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    new-instance v6, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;

    invoke-direct {v6, p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$11;-><init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 858
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonText:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    if-nez v6, :cond_c

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_2

    :cond_c
    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 859
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    if-ne v6, v5, :cond_d

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_3

    :cond_d
    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_3
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 860
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget v6, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    if-ne v6, v4, :cond_e

    iget v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_4

    :cond_e
    iget v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_4
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    if-ne v4, v3, :cond_f

    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    goto :goto_5

    :cond_f
    iget v3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "4300"

    invoke-static {v2, v3}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    :goto_6
    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/16 v3, 0x8

    if-ne p1, v2, :cond_10

    .line 964
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 965
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 966
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$drawable;->sec_qs_panel_multi_sim_menu_item_middle_ripple_bg:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 965
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_7

    .line 968
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListAskButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 969
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton1Group:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 970
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Lcom/android/systemui/R$drawable;->sec_qs_panel_multi_sim_menu_item_top_ripple_bg:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 969
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 973
    :goto_7
    sget-object v2, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    if-ne p1, v2, :cond_11

    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->isSupportCallpreferredOthers()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 974
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 975
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 976
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_qs_panel_multi_sim_menu_item_middle_ripple_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 975
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 978
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListOthersButtonGroup:Landroid/view/ViewGroup;

    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 979
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButton2Group:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 980
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->sec_qs_panel_multi_sim_menu_item_bottom_ripple_bg:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 979
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_8
    if-eqz v0, :cond_12

    .line 983
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 984
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->calculatePopupWindowPos(Landroid/view/View;Landroid/view/View;)[I

    move-result-object p1

    .line 985
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x800033

    aget v1, p1, v1

    aget p1, p1, v5

    invoke-virtual {p0, v0, v2, v1, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_12
    return-void
.end method

.method private unRegisterSimCardManagerCallback()V
    .locals 3

    .line 576
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->isServiceRunningCheck(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 577
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    const-string v1, "MultiSIMPreferredSlotBar"

    if-eqz v0, :cond_0

    .line 579
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    invoke-interface {v0, v2}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->unregisterSimCardManagerServiceCallback(Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;)Z

    .line 580
    invoke-static {}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->CloseService()Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Caught exception from unRegisterSimCardManagerCallback"

    .line 582
    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "unRegisterSimCardManagerCallback : mSimCardmanagerSerice is null "

    .line 585
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 589
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardCallback:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceCallback;

    return-void
.end method

.method private updateBarMagins()V
    .locals 3

    .line 538
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMultisimBarRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 539
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_multisim_preffered_slot_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 540
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->qs_multisim_preffered_slot_bottom_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 541
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMultisimBarRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 542
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mCallback:Lcom/android/systemui/qs/bar/BarItem$Callback;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/qs/bar/BarItem$Callback;->onBarHeightChanged()V

    :cond_0
    return-void
.end method

.method private updateBarVisibilities()V
    .locals 2

    .line 526
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    .line 528
    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 529
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 531
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInitViewDone:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mParent:Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 532
    invoke-direct {p0, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->initBarViews(Landroid/view/ViewGroup;)V

    .line 534
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->showBar(Z)V

    return-void
.end method

.method private updateCurruntDefaultSlot(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
    .locals 2

    .line 593
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const-string v1, "MultiSIMPreferredSlotBar"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    .line 615
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCurruntDefaultSlot : mDefaultDataSimId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultDataSimId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 610
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getPhoneId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    .line 611
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateCurruntDefaultSlot : mDefaultSmsSimId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultSmsSimId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 597
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-eqz p1, :cond_3

    .line 598
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    invoke-interface {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;->GetCurrentVoiceCall()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I

    goto :goto_0

    .line 600
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->getCurrentVoiceSlotByMethodCall()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mDefaultVoiceSimId:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Caught exception from updateCurruntDefaultSlot"

    .line 606
    invoke-static {v1, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateSlotListPopupContents()V
    .locals 4

    .line 795
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage1:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 796
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 797
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->QsPrefferedBtnImage:[I

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 798
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonText2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimName:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_ESIM:Z

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotListButtonImage2:Landroid/widget/ImageView;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->ESIMQsPrefferedBtnImage:[I

    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->SimImageIdx:[I

    aget p0, p0, v3

    aget p0, v1, p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1333
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1335
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 1336
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPreferedVoiceObserver:Landroid/database/ContentObserver;

    .line 1338
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1339
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 1341
    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v1, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 1342
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 1345
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->removeRemainMessage()V

    .line 1346
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->unRegisterSimCardManagerCallback()V

    .line 1349
    iget-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 1350
    iput-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1353
    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->sec_qs_panel_multi_sim_preffered_slot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    .line 479
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mParent:Landroid/view/ViewGroup;

    .line 480
    iput-boolean v2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInitViewDone:Z

    const/4 p1, 0x2

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setType(I)V

    .line 483
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    .line 484
    iget-object p0, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 1358
    sget-boolean p0, Lcom/android/systemui/Rune;->SYSUI_SUPPORT_MULTI_SIM_DEVICE:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 748
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 705
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->onConfigChanged(Landroid/content/res/Configuration;)V

    .line 706
    iget v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    .line 707
    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mCurrentOrientation:I

    .line 708
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInitViewDone:Z

    if-nez p1, :cond_0

    goto :goto_0

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    .line 712
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarMagins()V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    const-string p1, "MultiSIMPreferredSlotBar"

    const-string v0, "onLongClick()"

    .line 754
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->launchSimManager()V

    .line 757
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string p1, "4306"

    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public onPanelColorChanged(Lcom/android/systemui/qs/panelcolor/PanelColorModel;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1365
    :cond_0
    const-class v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;

    invoke-interface {v0}, Lcom/android/systemui/qscoloring/SecQSColoringPresenter;->isQSColoringTurnedOn()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1366
    iget p1, p1, Lcom/android/systemui/qs/panelcolor/PanelColorModel;->BasicText:I

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonTextColor:I

    goto :goto_0

    .line 1368
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtonTextColor:I

    .line 1370
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_popup_text_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupNormalTextColor:I

    .line 1371
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->qs_multisim_preffered_slot_popup_text_color_select:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupSelectedTextColor:I

    .line 1373
    iget-object p1, p0, Lcom/android/systemui/qs/bar/BarItemImpl;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mInitViewDone:Z

    if-nez p1, :cond_2

    goto :goto_2

    .line 1374
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSlotButtons:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    .line 1375
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    goto :goto_1

    .line 1378
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    .line 1379
    iput-object v1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mPopupWindow:Landroid/widget/PopupWindow;

    :cond_4
    :goto_2
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTuningChanged() : key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", newValue = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMPreferredSlotBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string v0, "multi_sim_bar_show_on_qspanel"

    .line 166
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 167
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mIsMultiSIMBarShowOnQSPanel:Z

    .line 168
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->updateBarVisibilities()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    .line 728
    invoke-super {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->setExpanded(Z)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setExpanded : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiSIMPreferredSlotBar"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 732
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    if-nez p1, :cond_1

    .line 733
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerServiceProvider;->getService(Landroid/content/Context;)Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    .line 734
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setListening : mSimCardmanagerSerice "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->mSimCardmanagerSerice:Lcom/samsung/android/app/telephonyui/netsettings/ui/simcardmanager/service/SimCardManagerService;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->registerSimCardManagerCallback()V

    goto :goto_0

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->unRegisterSimCardManagerCallback()V

    .line 743
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->dimissSlotListPopupWindow()V

    return-void
.end method
