.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "KeyguardWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;
    }
.end annotation


# static fields
.field private static final INFINITY_COLOR_LIST:[Ljava/lang/String;

.field private static final INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

.field private static sConfigured:Z

.field private static sIsActivityAlive:Z


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBackgroundImageViewHome:Landroid/widget/ImageView;

.field private mBackgroundImageViewLock:Landroid/widget/ImageView;

.field private mBottomContainer:Landroid/view/ViewGroup;

.field private mCapturedImageView:Landroid/widget/ImageView;

.field private mCheckBoxMotionEffect:Landroid/widget/CheckBox;

.field private mColorInfo:Ljava/lang/String;

.field private mConfirmDialog:Landroid/app/Dialog;

.field private mContext:Landroid/content/Context;

.field private mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field private mCurrentWhich:I

.field private mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

.field private mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

.field private mIsAodAvailable:Z

.field private mLastSystemUIVisibility:I

.field private mPackageName:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

.field private mSensorEnabled:Z

.field private mSetAsWallpaper:Z

.field private mSetAsWallpaperButton:Landroid/widget/Button;

.field private mSettingDescriptionTextView:Landroid/widget/TextView;

.field private mTextMotionEffect:Landroid/widget/TextView;

.field private mTitleTextView:Landroid/widget/TextView;

.field private mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

.field private mWallpaperDescription:Landroid/widget/TextView;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperType:I

.field private mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "black"

    const-string v1, "orchid"

    const-string v2, "silver"

    const-string v3, "blue"

    const-string v4, "gold"

    const-string v5, "pink"

    const-string v6, "purple"

    const-string v7, "brown"

    .line 127
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [Landroid/content/ComponentName;

    .line 130
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.infinity.InfinityWallpaperBlack"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperOrchid"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperSilver"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperBlue"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperGold"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperPink"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x5

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperPurple"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.systemui.infinity.InfinityWallpaperBrown"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

    .line 195
    sput-boolean v3, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    const/4 v0, 0x2

    .line 193
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 197
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    .line 206
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Z
    .locals 0

    .line 102
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    return p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/CheckBox;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/Dialog;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->onInfinityModeChanged(I)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    .line 102
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAndInitInfinityBackground()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/app/WallpaperManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showConfirmDialog()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->doSetAsWallpaper()V

    return-void
.end method

.method private canStartActivity()Z
    .locals 7

    .line 396
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "from"

    .line 397
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "themestore"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "KeyguardWallpaperPreviewActivity"

    if-nez v1, :cond_0

    const-string v1, "onCreate(): Invalid intent"

    .line 398
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v5, "type"

    .line 401
    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "locType"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 402
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_MOTION_WALLPAPER:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const-string v0, "onCreate(): Do not support motion wallpaper"

    .line 404
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 411
    :cond_2
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    const-string v0, "onCreate(): Do not support infinity wallpaper"

    .line 412
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_4

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate(): mWallpaperManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    :cond_4
    return v1
.end method

.method private dismissProgressDialog()V
    .locals 4

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "dismissProgressDialog()"

    .line 1027
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1029
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$10;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private doSetAsWallpaper()V
    .locals 15

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "doSetAsWallpaper()"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 742
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 745
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 747
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "isWallpaperChangeAllowed"

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 750
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 751
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "false"

    .line 752
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 758
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 753
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_changes_restrict_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 754
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 758
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    throw p0

    .line 764
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v2

    .line 765
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const-string v5, "Theme Store default wallpaper"

    const-string v6, "lockscreen_wallpaper_sub"

    const-string v7, "sub_display_lockscreen_wallpaper_transparency"

    const/4 v8, 0x3

    const-string v9, "white_lockscreen_navigationbar"

    const-string v10, "white_lockscreen_statusbar"

    const-string v11, "white_lockscreen_wallpaper"

    const-string v12, "lockscreen_wallpaper"

    const-string v13, "lockscreen_wallpaper_transparent"

    if-eq v3, v1, :cond_f

    const/4 v14, 0x2

    if-eq v3, v14, :cond_d

    const/4 v14, 0x4

    if-eq v3, v14, :cond_9

    const/4 v0, 0x5

    if-eq v3, v0, :cond_3

    goto/16 :goto_c

    .line 815
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->saveSensorEnable()V

    .line 816
    invoke-direct {p0, v13, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 817
    invoke-direct {p0, v0, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 818
    invoke-direct {p0, v12, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 819
    invoke-direct {p0, v11, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 820
    invoke-direct {p0, v10, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 821
    invoke-direct {p0, v9, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    const-string v0, "need_dark_font"

    .line 822
    invoke-direct {p0, v0, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v0

    const-string v2, "need_dark_statusbar"

    .line 823
    invoke-direct {p0, v2, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v2

    const-string v3, "need_dark_navigationbar"

    .line 824
    invoke-direct {p0, v3, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    move-result v1

    if-nez v0, :cond_4

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 826
    :cond_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.sec.android.intent.action.WALLPAPER_CHANGED"

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    .line 828
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    :cond_5
    move v0, v4

    .line 832
    :goto_2
    sget-object v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 833
    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 834
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COMPONENT_LIST:[Landroid/content/ComponentName;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->setWallpaperComponent(Landroid/content/ComponentName;)Z

    goto :goto_3

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 838
    :cond_7
    :goto_3
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_8

    .line 839
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast_infinity:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    .line 841
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast_infinity_without_aod:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_d

    :cond_9
    if-eqz v2, :cond_b

    .line 797
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto :goto_4

    :cond_a
    move v8, v4

    :goto_4
    invoke-direct {p0, v7, v1, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 798
    invoke-direct {p0, v6, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    goto :goto_6

    .line 800
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_c

    goto :goto_5

    :cond_c
    move v8, v4

    :goto_5
    invoke-direct {p0, v13, v1, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 801
    invoke-direct {p0, v12, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 803
    :goto_6
    invoke-direct {p0, v11, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 804
    invoke-direct {p0, v10, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 805
    invoke-direct {p0, v9, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 807
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doSetAsWallpaper: which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 812
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_c

    :cond_d
    if-eqz v2, :cond_e

    .line 782
    invoke-direct {p0, v7, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 783
    invoke-direct {p0, v6, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    goto :goto_8

    .line 785
    :cond_e
    invoke-direct {p0, v13, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 786
    invoke-direct {p0, v12, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 788
    :goto_8
    invoke-direct {p0, v11, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 789
    invoke-direct {p0, v10, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 790
    invoke-direct {p0, v9, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 791
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setPreloadWallpaper(ILjava/lang/String;)Z

    .line 792
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_d

    :cond_f
    if-eqz v2, :cond_11

    .line 768
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_10

    goto :goto_9

    :cond_10
    move v8, v4

    :goto_9
    invoke-direct {p0, v7, v1, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 769
    invoke-direct {p0, v6, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    goto :goto_b

    .line 771
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_12

    goto :goto_a

    :cond_12
    move v8, v4

    :goto_a
    invoke-direct {p0, v13, v1, v8}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 772
    invoke-direct {p0, v12, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 774
    :goto_b
    invoke-direct {p0, v11, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 775
    invoke-direct {p0, v10, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 776
    invoke-direct {p0, v9, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 777
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v1, v2}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;I)V

    .line 778
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_c
    const-string v5, "Theme Store downloaded contents"

    .line 847
    :goto_d
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 848
    invoke-direct {p0, v5}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sendAnalyticsEventLogs(Ljava/lang/String;)V

    return-void
.end method

.method private getContentViewId()I
    .locals 0

    .line 964
    sget p0, Lcom/android/systemui/R$layout;->keyguard_wallpaper_preview_activity:I

    return p0
.end method

.method private getLegacyCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "getLegacyCapturedBitmap()"

    .line 709
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 716
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 717
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    move-object v0, p0

    goto :goto_2

    .line 719
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCapturedImageView(): "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    .line 721
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 722
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 723
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 724
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    goto :goto_1

    :catch_2
    move-exception p0

    move-object v0, v3

    .line 728
    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    move-object v0, v3

    .line 726
    :goto_1
    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_2
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    return-object v3
.end method

.method private getPreviewRatio()F
    .locals 3

    .line 1115
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1116
    sget v1, Lcom/android/systemui/R$dimen;->kg_preview_ratio:I

    .line 1117
    sget-boolean v2, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v2

    if-nez v2, :cond_0

    .line 1118
    sget v1, Lcom/android/systemui/R$dimen;->kg_foldable_sub_preview_ratio:I

    .line 1121
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1122
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;
    .locals 4

    .line 1100
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "window"

    .line 1102
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 1103
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 1104
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1105
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1106
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 1107
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p0

    :goto_1
    if-nez p1, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    move p0, v1

    .line 1111
    :cond_3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method private getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 942
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWallpaperTypeInteger(): type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardWallpaperPreviewActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "motion"

    .line 944
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "preload"

    const-string v1, "download"

    if-nez p0, :cond_2

    const-string p0, "cinematic"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "animated"

    .line 950
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 951
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_1
    const-string p0, "infinity"

    .line 954
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    if-eqz p2, :cond_4

    .line 955
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x5

    return p0

    .line 945
    :cond_2
    :goto_0
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-eqz p2, :cond_4

    .line 947
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private init()V
    .locals 6

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "init()"

    .line 425
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 v5, 0x2

    if-eq v1, v5, :cond_4

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_0

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init(): mWallpaperType="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title_infinity:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    .line 438
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->kg_infinity_wallpaper_description:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 441
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->kg_infinity_wallpaper_description_without_aod:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 443
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_2

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 448
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 433
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 430
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 456
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_8

    .line 457
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 458
    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_foldable_main_settting_description:I

    goto :goto_2

    .line 459
    :cond_6
    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_foldable_sub_settting_description:I

    .line 460
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_7

    .line 464
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 467
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->kg_foldable_preview_top_margin:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 468
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 471
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V

    .line 473
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v3, :cond_9

    .line 474
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 483
    :cond_9
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v2, :cond_a

    .line 484
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$5;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 493
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$6;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v0, :cond_b

    .line 505
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$7;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 517
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$8;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_c
    return-void
.end method

.method private initAndShowProgressDialog()V
    .locals 2

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initAndShowProgressDialog()"

    .line 1007
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1010
    new-instance v0, Landroid/app/ProgressDialog;

    sget v1, Lcom/android/systemui/R$style;->CircleProgressStyle:I

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 1011
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1012
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 1014
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$9;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1022
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Landroid/app/ProgressDialog;->show()V

    :cond_0
    return-void
.end method

.method private initBackgroundImageView(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initBackgroundImageView()"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p1, "initBackgroundImageView(): wallpaperBitmap is null"

    .line 650
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 654
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 655
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 662
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 663
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    if-eqz v1, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    .line 670
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlendedBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 671
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 673
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    sget-object p0, Lcom/samsung/android/graphics/SemImageFilter$BlurFilterType;->GAUSSIAN:Lcom/samsung/android/graphics/SemImageFilter$FilterType;

    invoke-static {p0}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->createImageFilter(Lcom/samsung/android/graphics/SemImageFilter$FilterType;)Lcom/samsung/android/graphics/SemImageFilter;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;

    const/high16 p2, 0x428c0000    # 70.0f

    .line 675
    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/SemGaussianBlurImageFilter;->setRadius(F)V

    .line 676
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->semSetImageFilter(Lcom/samsung/android/graphics/SemImageFilter;)Z

    return-void

    .line 665
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initBackgroundImageView(): viewWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", viewHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 657
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initBackgroundImageView(): bitmapWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bitmapHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initCapturedImageView()V
    .locals 6

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initCapturedImageView()"

    .line 680
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.android.systemui.keyguard.image"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 685
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "/custom?width=%d&height=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    const/4 v1, 0x0

    .line 692
    :try_start_0
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 694
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 699
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getLegacyCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    .line 703
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 704
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private initPreviewArea()V
    .locals 2

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initPreviewArea()"

    .line 574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperPreviewActivity$TC132e9lYzC2cZWkSHA39YwN6Hw;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperPreviewActivity$TC132e9lYzC2cZWkSHA39YwN6Hw;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private initSensorEnable()V
    .locals 4

    const/4 v0, 0x0

    .line 338
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "infinity_motion_effect"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    .line 339
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 343
    :cond_1
    sget-boolean v1, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setHomeSensorEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 348
    :catch_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    :cond_2
    :goto_1
    return-void
.end method

.method private isAodAvailable()Z
    .locals 9

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "isAodAvailable()"

    .line 1068
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->isSupportAodInfinity()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 1074
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string p0, "content://com.samsung.android.app.aodservice.provider/settings/aod_infinity_wallpaper"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1077
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 1078
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1079
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "TRUE"

    .line 1081
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 1082
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAodAvailable(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return v1

    :cond_1
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1087
    :try_start_1
    invoke-virtual {v0}, Landroid/database/SQLException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_2
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method private isAttachedMobileKeyboard()Z
    .locals 1

    .line 1040
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1041
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadAndInitInfinityBackground()V
    .locals 10

    const-string v0, "com.samsung.android.wallpaper.res"

    const-string v1, "KeyguardWallpaperPreviewActivity"

    const-string v2, "loadAndInitInfinityBackground()"

    .line 871
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    sget-object v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->INFINITY_COLOR_LIST:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "keyguard_default_wallpaper"

    const-string v5, "default_wallpaper"

    if-nez v2, :cond_0

    .line 877
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 878
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v2, v4

    .line 881
    :goto_0
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v6, 0x1

    .line 882
    iput-boolean v6, v4, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 884
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    const/high16 v7, -0x1000000

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 886
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 888
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    invoke-virtual {v6, v2, v9, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 889
    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    .line 890
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v2, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 889
    invoke-direct {p0, v6, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 892
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 893
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 896
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    .line 897
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5, v9, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 899
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "homeDrawableID = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    .line 901
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 900
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 903
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "loadAnimatedBackgroundBitmap()"

    .line 852
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 856
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 857
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 860
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 863
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const-string v3, "lockscreen_wallpaper"

    const-string v4, "drawable"

    invoke-virtual {v0, v3, v4, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 867
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private onInfinityModeChanged(I)V
    .locals 6

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onInfinityModeChanged() mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v2, 0x1f4

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    const/4 v5, 0x1

    if-eq p1, v5, :cond_2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-string p0, "onInfinityModeChanged(): Invalid mode"

    .line 936
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 930
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v4, [F

    fill-array-data v0, :array_0

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 931
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 932
    new-instance p1, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 933
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 923
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 924
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v4, [F

    fill-array-data v0, :array_1

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 925
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 926
    new-instance p1, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 927
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 919
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 920
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 912
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 913
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {p0, p1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 914
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 915
    new-instance p1, Lcom/samsung/android/view/animation/SineOut60;

    invoke-direct {p1}, Lcom/samsung/android/view/animation/SineOut60;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 916
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private registerNavigationBarObserve()V
    .locals 2

    .line 529
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    .line 530
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    const/4 v1, -0x1

    .line 531
    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mLastSystemUIVisibility:I

    .line 533
    new-instance v1, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperPreviewActivity$yN1J4fFUcU8fPlcKifVDkMNWVDw;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/-$$Lambda$KeyguardWallpaperPreviewActivity$yN1J4fFUcU8fPlcKifVDkMNWVDw;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 569
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 570
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    invoke-interface {v1, p0}, Landroid/view/View$OnSystemUiVisibilityChangeListener;->onSystemUiVisibilityChange(I)V

    return-void
.end method

.method private saveSensorEnable()V
    .locals 4

    .line 367
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    .line 368
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    const-string v3, "infinity_motion_effect"

    invoke-static {v1, v3, v0, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "saveSensorEnable() mSensorEnabled : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSensorEnabled:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardWallpaperPreviewActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendAnalyticsEventLogs(Ljava/lang/String;)V
    .locals 6

    .line 1132
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v0

    .line 1133
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const-string v1, "700"

    goto :goto_0

    :cond_0
    const-string v1, "200"

    :goto_0
    if-eqz v0, :cond_2

    .line 1137
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v1, v2, :cond_1

    const-string v1, "710"

    goto :goto_1

    :cond_1
    const-string v1, "210"

    :cond_2
    :goto_1
    const-string v3, "0002"

    .line 1143
    invoke-static {v1, v3, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 1148
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperTypeToString(I)Ljava/lang/String;

    move-result-object p1

    const-string v3, "0020"

    .line 1147
    invoke-static {v1, v3, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1151
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {p1, v3}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result p1

    .line 1152
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperTypeToString(I)Ljava/lang/String;

    move-result-object p1

    .line 1154
    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const-string v5, "wallpaper_pref"

    invoke-virtual {v3, v5, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1155
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-eqz v0, :cond_3

    const-string v0, "1008"

    goto :goto_2

    :cond_3
    const-string v0, "1009"

    .line 1156
    :goto_2
    invoke-interface {v3, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1157
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1160
    iget p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne p1, v2, :cond_5

    .line 1161
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p1, "AOD on & AOD calendar off & AOD image clock off"

    goto :goto_3

    :cond_4
    const-string p1, "AOD off / AOD calendar on / AOD image clock on"

    :goto_3
    const-string v0, "0006"

    .line 1164
    invoke-static {v1, v0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1166
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "enableInfinityAOD : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardWallpaperPreviewActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private setSystemSettings(Ljava/lang/String;II)Z
    .locals 2

    .line 997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemSettings(): key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 1000
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setSystemSettingsForUser(Ljava/lang/String;II)Z
    .locals 2

    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemSettingsForUser(): key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 990
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showConfirmDialog()V
    .locals 3

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "showConfirmDialog()"

    .line 1045
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_confirm_dialog_message:I

    .line 1048
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_confirm_dialog_apply:I

    new-instance v2, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$12;

    invoke-direct {v2, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$12;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    .line 1049
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$11;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const/high16 v2, 0x1040000

    .line 1055
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1064
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updatePreviewSize()V
    .locals 5

    const/4 v0, 0x0

    .line 969
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    move-result-object v0

    .line 970
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getPreviewRatio()F

    move-result v1

    .line 972
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 973
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 975
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 977
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 980
    :cond_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 981
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 983
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWallpaperView()Z
    .locals 14

    .line 601
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const-string v1, "initPreviewArea(): mPackageName is empty"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "KeyguardWallpaperPreviewActivity"

    if-eq v0, v2, :cond_6

    const/4 v5, 0x2

    const-string v6, "initPreviewArea(): mColorInfo is empty"

    if-eq v0, v5, :cond_4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 632
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_8

    .line 633
    new-instance v0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 634
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    .line 635
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAttachedMobileKeyboard()Z

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityCallback:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    goto :goto_0

    .line 619
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 620
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 623
    :cond_3
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v8, 0x1

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 624
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v10

    const/4 v11, 0x0

    iget v12, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v5, v0

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    .line 611
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 612
    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 615
    :cond_5
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    const/4 v12, 0x1

    iget v13, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v7, v0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    goto :goto_0

    .line 603
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 604
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 607
    :cond_7
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mUpdateBitmapCallback:Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget v11, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v5, v0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/WallpaperUtils$UpdateBitmapCallback;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    :cond_8
    :goto_0
    return v2
.end method


# virtual methods
.method public synthetic lambda$initPreviewArea$1$KeyguardWallpaperPreviewActivity()V
    .locals 2

    .line 578
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->updateWallpaperView()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initPreviewArea, fail."

    .line 579
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 584
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 585
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v0, :cond_2

    .line 586
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 587
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 588
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->onResume()V

    goto :goto_0

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    .line 592
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 593
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 594
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    :cond_2
    :goto_0
    return-void
.end method

.method public synthetic lambda$registerNavigationBarObserve$0$KeyguardWallpaperPreviewActivity(I)V
    .locals 8

    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 535
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "android"

    const-string v5, "config_showNavigationBar"

    const-string v6, "bool"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_1

    .line 537
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v2

    .line 541
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSystemUiVisibilityChange: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KeyguardWallpaperPreviewActivity"

    invoke-static {v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mLastSystemUIVisibility:I

    .line 543
    iput p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mLastSystemUIVisibility:I

    .line 545
    iget v7, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mLastSystemUIVisibility:I

    if-ne v7, v3, :cond_2

    .line 546
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not changed"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string p1, "navigation_bar_height"

    const-string v3, "dimen"

    .line 552
    invoke-virtual {v1, p1, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-lez p1, :cond_3

    .line 554
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_1

    :cond_3
    const-string p1, "onSystemUiVisibilityChange: failed to get navigation_bar_height"

    .line 556
    invoke-static {v6, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 560
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBottomContainer:Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    .line 561
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move p1, v2

    .line 564
    :goto_2
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 565
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBottomContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "KeyguardWallpaperPreviewActivity"

    const-string v0, "onCreate()"

    .line 238
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 240
    sput-boolean p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 242
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 243
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->canStartActivity()Z

    move-result v0

    if-nez v0, :cond_0

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getContentViewId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "packageName"

    .line 252
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const-string v1, "colorInfo"

    .line 253
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 257
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x300

    .line 259
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 261
    sget v0, Lcom/android/systemui/R$id;->root_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 262
    sget v0, Lcom/android/systemui/R$id;->preview_area:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 263
    sget v0, Lcom/android/systemui/R$id;->preview_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 264
    sget v0, Lcom/android/systemui/R$id;->title_text_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTitleTextView:Landroid/widget/TextView;

    .line 265
    sget v0, Lcom/android/systemui/R$id;->wallpaper_setting_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 266
    sget v0, Lcom/android/systemui/R$id;->captured_image_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    .line 267
    sget v0, Lcom/android/systemui/R$id;->background_image_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 268
    sget v0, Lcom/android/systemui/R$id;->background_image_view_lock:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    .line 269
    sget v0, Lcom/android/systemui/R$id;->background_image_view_home:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    .line 270
    sget v0, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBottomContainer:Landroid/view/ViewGroup;

    .line 271
    sget v0, Lcom/android/systemui/R$id;->wallpaper_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    .line 272
    sget v0, Lcom/android/systemui/R$id;->set_as_wallpaper_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    .line 273
    sget v0, Lcom/android/systemui/R$id;->checkbox_motion_effect:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCheckBoxMotionEffect:Landroid/widget/CheckBox;

    .line 274
    sget v0, Lcom/android/systemui/R$id;->checkbox_motion_effect_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mTextMotionEffect:Landroid/widget/TextView;

    .line 275
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-direct {v0, p0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 278
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initAndShowProgressDialog()V

    .line 282
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->init()V

    .line 283
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->scaleMiddleDensityViewIfNeeded(Landroid/view/View;)Z

    .line 285
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->updatePreviewSize()V

    .line 286
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initCapturedImageView()V

    .line 290
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->registerNavigationBarObserve()V

    .line 292
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    if-nez v0, :cond_2

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 293
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 295
    sput-boolean p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 374
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "onDestroy()"

    .line 375
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    const/4 v0, 0x0

    .line 378
    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 380
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    if-eqz v0, :cond_0

    .line 381
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 354
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "onPause()"

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onPause()V

    .line 361
    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz p0, :cond_1

    .line 362
    invoke-virtual {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->onPause()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/systemui/R$string;->dream_cant_use_this_app_in_multi_window_view_tpop:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume() which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 314
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/SystemUIWallpaperBase;->onResume()V

    .line 317
    :cond_1
    sget-boolean v0, Lcom/android/systemui/Rune;->WPAPER_SUPPORT_INFINITY_WALLPAPER:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    if-eqz v0, :cond_4

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->isAodAvailable()Z

    move-result v0

    .line 320
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eq v1, v0, :cond_3

    .line 321
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mIsAodAvailable:Z

    if-eqz v0, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->kg_infinity_wallpaper_description:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 325
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    sget v2, Lcom/android/systemui/R$string;->kg_infinity_wallpaper_description_without_aod:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v1, v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->setIsAodAvailable(Z)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mInfinityView:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->onResume()V

    .line 333
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initSensorEnable()V

    return-void
.end method
