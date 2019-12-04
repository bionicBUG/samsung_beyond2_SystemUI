.class public Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.source "FaceWidgetMusicPage.java"

# interfaces
.implements Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;,
        Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

.field private mChildPage:Landroid/view/View;

.field private mControllerContainer:Landroid/view/View;

.field private mCoverSize:I

.field private mFaceWidgetTriggerListener:Landroid/view/View$OnClickListener;

.field private mIsCoverShowing:Z

.field private mIsNextSupported:Z

.field private mIsPrevSupported:Z

.field private mIsSessionEnabled:Z

.field private mIsShowingPauseBtn:Z

.field private mLyricsBtn:Landroid/widget/TextView;

.field private mLyricsHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

.field private mLyricsScrollView:Landroid/widget/ScrollView;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Landroid/widget/TextView;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicContentContainer:Landroid/widget/LinearLayout;

.field private mMusicCoverBitmap:Landroid/graphics/Bitmap;

.field private mMusicCoverContainer:Landroid/view/View;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Landroid/widget/TextView;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mNextBtn:Landroid/widget/ImageView;

.field private mNoMusicContainer:Landroid/widget/LinearLayout;

.field private mNoMusicImageView:Landroid/widget/ImageView;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPauseBtn:Landroid/widget/ImageView;

.field private mPlayBtn:Landroid/widget/ImageView;

.field private mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

.field private mPrevBtn:Landroid/widget/ImageView;

.field private mRippleArea:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 104
    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    const-string v0, "android.media.metadata.ALBUM_ART"

    const-string v1, "android.media.metadata.ART"

    const-string v2, "android.media.metadata.DISPLAY_ICON"

    .line 106
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 166
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 174
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 178
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 134
    iput p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    const/4 p3, 0x0

    .line 135
    iput-object p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 136
    iput-object p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    const/4 p3, 0x1

    .line 137
    iput-boolean p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsCoverShowing:Z

    .line 138
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    .line 143
    iput-boolean p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsSessionEnabled:Z

    .line 144
    iput-boolean p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsPrevSupported:Z

    .line 145
    iput-boolean p3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsNextSupported:Z

    .line 147
    new-instance p2, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$QL_Yg7zlt-f3Y9bwMSW-ng6xlqM;

    invoke-direct {p2, p0}, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$QL_Yg7zlt-f3Y9bwMSW-ng6xlqM;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;)V

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mFaceWidgetTriggerListener:Landroid/view/View$OnClickListener;

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;I)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updateAnalytics(I)V

    return-void
.end method

.method private createRoundedCoverBitmapDrawable(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 820
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 821
    invoke-static {p0, p1}, Landroidx/core/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p1

    .line 823
    sget v0, Lcom/android/systemui/R$dimen;->facewidget_music_view_cover_radius:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/core/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p1
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 3

    .line 954
    sget-object p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    .line 955
    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getDetailByKeyCode(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x55

    if-ne p1, v0, :cond_1

    .line 656
    iget-boolean p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    if-eqz p0, :cond_0

    const-string p0, "2"

    return-object p0

    :cond_0
    const-string p0, "1"

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getEventNameByKeyCode(I)Ljava/lang/String;
    .locals 0

    const/16 p0, 0x55

    if-eq p1, p0, :cond_2

    const/16 p0, 0x57

    if-eq p1, p0, :cond_1

    const/16 p0, 0x58

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "1051"

    return-object p0

    :cond_1
    const-string p0, "1053"

    return-object p0

    :cond_2
    const-string p0, "1052"

    return-object p0
.end method

.method private getMusicInfoWidthForTablet()I
    .locals 3

    .line 685
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v0

    const v2, 0x3f1c28f6    # 0.61f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 686
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v0, p0, :cond_0

    int-to-float p0, p0

    mul-float/2addr p0, v2

    const v0, 0x3f59999a    # 0.85f

    mul-float/2addr p0, v0

    float-to-int v1, p0

    :cond_0
    return v1
.end method

.method private getMusicPlayIntent()Landroid/content/Intent;
    .locals 4

    .line 546
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getLastSessionPackageName()Ljava/lang/String;

    move-result-object v0

    .line 548
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 549
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-nez v0, :cond_1

    .line 554
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MUSIC_PLAYER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$string;->facewidget_music_select_music_app:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 554
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 558
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v1, 0x1

    .line 559
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 558
    invoke-virtual {p0, v0, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_2

    move-object v0, v2

    :cond_2
    return-object v0
.end method

.method private initBigPagePadding(Landroid/widget/LinearLayout;)V
    .locals 0

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method private isDark(I)Z
    .locals 2

    .line 913
    invoke-static {p1}, Landroidx/core/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDarkCover()Z
    .locals 10

    .line 868
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    if-ltz v2, :cond_4

    .line 873
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 874
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v0

    .line 875
    iget v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 876
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 878
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 881
    sget v6, Lcom/android/systemui/R$dimen;->facewidget_music_view_lyrics_btn_margin:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 882
    sget v7, Lcom/android/systemui/R$dimen;->facewidget_music_view_lyrics_btn_height:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 883
    iget v7, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    mul-int/lit8 v8, v5, 0x2

    sub-int v9, v7, v8

    sub-int/2addr v9, v6

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    sub-int/2addr v7, v5

    sub-int/2addr v7, v6

    int-to-float v6, v7

    mul-float/2addr v6, v4

    float-to-int v6, v6

    int-to-float v7, v8

    mul-float/2addr v7, v3

    float-to-int v3, v7

    int-to-float v7, v5

    mul-float/2addr v7, v4

    float-to-int v4, v7

    if-lez v9, :cond_4

    if-gtz v5, :cond_1

    goto :goto_0

    :cond_1
    add-int v5, v9, v3

    if-ge v0, v5, :cond_2

    sub-int v3, v0, v9

    :cond_2
    add-int v0, v6, v4

    if-ge v2, v0, :cond_3

    sub-int v4, v2, v6

    .line 901
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v9, v6, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v2, 0x0

    .line 902
    invoke-static {v0, v1, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 903
    invoke-virtual {v0, v2, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    .line 904
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isDark(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 906
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error : create bitmap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_4
    :goto_0
    return v1
.end method

.method private static isTablet()Z
    .locals 1

    .line 964
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$oKDpYVZ39LjAA57kh4onZPQQHcc(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1004
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->launchMusicApp(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)Z

    return-void
.end method

.method private playAlbumAnimation(Landroid/view/View;)V
    .locals 10

    .line 924
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 928
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 929
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 931
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    const v8, 0x3f4ccccd    # 0.8f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_1

    .line 932
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 933
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mAlbumHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 934
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 935
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 936
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 937
    iput-boolean v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsCoverShowing:Z

    const-string p0, "107"

    const-string p1, "1058"

    .line 940
    invoke-static {p0, p1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 943
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p1}, Landroid/widget/ScrollView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v8}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 944
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 945
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 946
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    .line 947
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v9}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 p1, 0x1

    .line 948
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsCoverShowing:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setPlayBtnImage(Z)V
    .locals 2

    .line 752
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 757
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 760
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 761
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 763
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPauseBtn:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateAnalytics(I)V
    .locals 3

    .line 627
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "107"

    goto :goto_0

    :cond_0
    const-string v0, "106"

    .line 628
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getEventNameByKeyCode(I)Ljava/lang/String;

    move-result-object v1

    .line 629
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 633
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getDetailByKeyCode(I)Ljava/lang/String;

    move-result-object p0

    .line 634
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 635
    invoke-static {v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 637
    :cond_2
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updateCoverSize()V
    .locals 7

    .line 702
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsMKeyboardConnected:Z

    if-eqz v0, :cond_0

    .line 703
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->facewidget_music_page_big_cover_mkkeyboard_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    return-void

    .line 710
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->facewidget_music_big_padding_side:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 713
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v2, v1, :cond_2

    .line 715
    invoke-static {}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 716
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const v2, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 719
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x3f774bc7    # 0.966f

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    goto :goto_2

    .line 729
    :cond_2
    invoke-static {}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 730
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const v2, 0x3e828f5d    # 0.25500003f

    goto :goto_1

    .line 733
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const v2, 0x3f71a9fc    # 0.944f

    .line 738
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    mul-int/lit8 v4, v4, 0x3

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "music cover size : width min-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "/ height min-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 743
    iput v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    .line 744
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "music cover size : gui-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/ min-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    iget v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    if-le v1, v0, :cond_5

    .line 747
    iput v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    :cond_5
    return-void
.end method

.method private updateLyricsBtn(Z)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 851
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return v0

    .line 855
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isDarkCover()Z

    move-result p1

    .line 858
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDarkCover"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    sget v2, Lcom/android/systemui/R$color;->theme_music_lyrics_btn_text_color:I

    goto :goto_0

    .line 861
    :cond_1
    sget v2, Lcom/android/systemui/R$color;->theme_music_lyrics_btn_text_invert_color:I

    .line 860
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p1, :cond_2

    sget p1, Lcom/android/systemui/R$drawable;->facewidget_music_lyrics_btn_background:I

    goto :goto_1

    .line 863
    :cond_2
    sget p1, Lcom/android/systemui/R$drawable;->facewidget_music_lyrics_btn_background_invert:I

    .line 862
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private updateMusicCoverView()V
    .locals 2

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updateCoverSize()V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 670
    iget v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 671
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 672
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_2

    .line 676
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 677
    invoke-static {}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getMusicInfoWidthForTablet()I

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    :goto_0
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 678
    iget v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mCoverSize:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 679
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private updateMusicInfoView()V
    .locals 2

    .line 694
    invoke-static {}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 696
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getMusicInfoWidthForTablet()I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 697
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updatePrevNextAlpha()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 278
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsPrevSupported:Z

    .line 279
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsNextSupported:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsSessionEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v1, "FaceWidgetMusicPage"

    const-string v4, "setNextPrevBtn mIsPrevSupported(%s) mIsNextSupported(%s) mIsSessionEnabled(%s)"

    .line 278
    invoke-static {v1, v4, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsPrevSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsSessionEnabled:Z

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 282
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsNextSupported:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsSessionEnabled:Z

    if-eqz v1, :cond_1

    move v2, v3

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    if-eqz v1, :cond_3

    .line 285
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 288
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNextBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 289
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 290
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNextBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_5
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 430
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->clear()V

    return-void
.end method

.method public clear()V
    .locals 6

    .line 220
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 221
    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getNotificationManager()Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/FaceWidgetNotificationManager;->updateFaceWidgetMusicNotificationPkg(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 224
    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    .line 225
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->isNoMusic()Z

    move-result v0

    .line 227
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clear() showNoMusic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v2, :cond_2

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    .line 230
    :goto_0
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicContentContainer:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    move v3, v4

    .line 234
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 238
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    .line 242
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_7

    .line 246
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->setLyrics(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 252
    sget v2, Lcom/android/systemui/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_8
    if-nez v0, :cond_9

    .line 257
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->requestCacheData(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    :cond_9
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1015
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Child page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mChildPage:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Metadata: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    IsCoverShowing : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsCoverShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    IsShowingPauseBtn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    .line 1022
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    .line 1023
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "    holder\'s child page : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1025
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            - #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1026
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1028
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "            "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1032
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
    .locals 3

    .line 412
    sget v0, Lcom/android/systemui/R$layout;->facewidget_music_page_small:I

    .line 413
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_2

    .line 414
    invoke-static {}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 415
    sget v0, Lcom/android/systemui/R$layout;->facewidget_music_page_big_tablet:I

    goto :goto_1

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 418
    sget p1, Lcom/android/systemui/R$layout;->facewidget_music_page_land_big:I

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/systemui/R$layout;->facewidget_music_page_big:I

    :goto_0
    move v0, p1

    goto :goto_1

    .line 420
    :cond_2
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_3

    .line 421
    sget v0, Lcom/android/systemui/R$layout;->facewidget_music_page_aod:I

    .line 424
    :cond_3
    :goto_1
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mChildPage:Landroid/view/View;

    .line 425
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mChildPage:Landroid/view/View;

    return-object p0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 0

    .line 407
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "servicebox_music"

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 1009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetMusicPage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_Full"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 4

    .line 440
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_no_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicContainer:Landroid/widget/LinearLayout;

    .line 441
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_content_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicContentContainer:Landroid/widget/LinearLayout;

    .line 443
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_appinfo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    .line 444
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    .line 445
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    .line 446
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    .line 447
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_cover_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    .line 448
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_lyrics_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    .line 449
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_lyrics_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    .line 450
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_lyrics:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    .line 451
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_play_pause_btn_ripple_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

    .line 452
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_prev_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    .line 453
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_play_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    .line 454
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_pause_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPauseBtn:Landroid/widget/ImageView;

    .line 455
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_next_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNextBtn:Landroid/widget/ImageView;

    .line 456
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_controller_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mControllerContainer:Landroid/view/View;

    .line 457
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_ripple_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    .line 459
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 463
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->initBigPagePadding(Landroid/widget/LinearLayout;)V

    .line 464
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updateMusicCoverView()V

    .line 465
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updateMusicInfoView()V

    .line 468
    :cond_0
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mAlbumHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    .line 469
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-direct {v0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsHideListener:Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$ViewHideAnimatorListener;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 471
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$oKDpYVZ39LjAA57kh4onZPQQHcc;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$oKDpYVZ39LjAA57kh4onZPQQHcc;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 475
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$oKDpYVZ39LjAA57kh4onZPQQHcc;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$oKDpYVZ39LjAA57kh4onZPQQHcc;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 479
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/16 v3, 0x58

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_4

    .line 483
    new-instance v0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/16 v2, 0x55

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/content/Context;I)V

    .line 484
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$1;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 497
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNextBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 498
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;

    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    invoke-direct {v1, p0, v2, v3}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage$MusicClickListener;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mFaceWidgetTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_6

    .line 503
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mFaceWidgetTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 507
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mFaceWidgetTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 510
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_a

    .line 511
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_info:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/widget/SystemUITextView;

    if-eqz v0, :cond_8

    .line 513
    sget v1, Lcom/android/systemui/R$string;->facewidget_music_closed:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    :cond_8
    sget v0, Lcom/android/systemui/R$id;->facewidget_app_choser_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/widget/SystemUIButton;

    if-eqz p1, :cond_b

    .line 517
    sget v0, Lcom/android/systemui/R$string;->facewidget_music_play:I

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getMusicPlayIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 521
    new-instance v1, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$A_PZkwjT_MC4r_egd26VO3FQDYE;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/facewidget/pages/music/-$$Lambda$FaceWidgetMusicPage$A_PZkwjT_MC4r_egd26VO3FQDYE;-><init>(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_9
    const/16 v0, 0x8

    .line 527
    invoke-virtual {p1, v0}, Lcom/android/systemui/widget/SystemUIButton;->setVisibility(I)V

    goto :goto_0

    .line 532
    :cond_a
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicImageView:Landroid/widget/ImageView;

    .line 533
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_content_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_b

    .line 535
    sget v0, Lcom/android/systemui/R$string;->facewidget_music_no_content:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    const-string v0, "no_contents_music_title"

    .line 536
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 540
    :cond_b
    :goto_0
    sget-object p1, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V

    .line 541
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsShowingPauseBtn:Z

    return-void
.end method

.method public isFaceWidgetMusicControllerDisabled()Z
    .locals 0

    .line 329
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicContentContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public synthetic lambda$initViews$1$FaceWidgetMusicPage(Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 522
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getKeyguardStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getKeyguardStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$FaceWidgetMusicPage(Landroid/view/View;)V
    .locals 1

    .line 148
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsAnimating:Z

    if-eqz p1, :cond_0

    return-void

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v0, :cond_1

    .line 153
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->getKeyguardStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->launchMusicApp(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->dismissFaceWidget()V

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 395
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onAttachedToWindow()V

    .line 396
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->addCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    return-void
.end method

.method protected onChangedSidePadding()V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 389
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 390
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->removeAllCacheData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 401
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onDetachedFromWindow()V

    .line 402
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->removeCallback(Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController$FaceWidgetMusicControllerListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    sget v0, Lcom/android/systemui/R$id;->facewidget_music_page_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public onMusicButtonClicked(I)V
    .locals 0

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 357
    :cond_0
    new-instance v0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-direct {v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;-><init>()V

    const/16 v1, 0xf

    .line 358
    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setClipFace(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object v0

    const-string v1, "facewidget_music_page_lyrics"

    .line 357
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 360
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v1, 0x14d

    .line 361
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 363
    new-instance v1, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-direct {v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;-><init>()V

    const/16 v2, 0xc

    .line 364
    invoke-virtual {v1, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setScalePivot(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    .line 366
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne p0, v2, :cond_1

    new-array p0, v5, [Landroid/animation/Animator;

    .line 367
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    .line 368
    invoke-static {v7, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    .line 369
    invoke-static {v7, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v3

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_2

    .line 370
    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v6

    .line 367
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 373
    invoke-virtual {v1, v7, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    goto :goto_0

    :cond_1
    new-array p0, v5, [Landroid/animation/Animator;

    .line 375
    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v5, v6, [F

    fill-array-data v5, :array_3

    .line 376
    invoke-static {v7, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v4

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v6, [F

    fill-array-data v4, :array_4

    .line 377
    invoke-static {v7, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v3

    sget-object v2, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v3, v6, [F

    fill-array-data v3, :array_5

    .line 378
    invoke-static {v7, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, p0, v6

    .line 375
    invoke-virtual {v0, p0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 381
    invoke-virtual {v1, v0, v7}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    :goto_0
    const-string p0, "music_cover"

    .line 383
    invoke-virtual {p1, p0, v1}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    .line 384
    invoke-static {}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->generateMoveOption()Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const-string v0, "no_contents_text"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 2

    .line 195
    sget-object p2, Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;->WHITE_BG_CHANGED:Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;

    if-ne p1, p2, :cond_7

    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq p1, p2, :cond_7

    .line 198
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const-string v0, "background"

    if-ne p1, p2, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "top"

    .line 197
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p1

    .line 200
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 201
    sget v1, Lcom/android/systemui/R$drawable;->ripple_drawable_dark_rect:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->ripple_drawable_rect:I

    :goto_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 204
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicImageView:Landroid/widget/ImageView;

    if-eqz p2, :cond_4

    if-eqz p1, :cond_3

    .line 205
    sget v1, Lcom/android/systemui/R$drawable;->lock_facewidget_no_content_ic_whitebg_music_mtrl:I

    goto :goto_2

    :cond_3
    sget v1, Lcom/android/systemui/R$drawable;->lock_facewidget_no_content_ic_music_mtrl:I

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 208
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayPauseRippleLayout:Landroid/widget/FrameLayout;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_5

    .line 209
    sget p1, Lcom/android/systemui/R$drawable;->ripple_drawable_dark_oval:I

    goto :goto_3

    :cond_5
    sget p1, Lcom/android/systemui/R$drawable;->ripple_drawable_oval:I

    :goto_3
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 212
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    if-eqz p1, :cond_7

    .line 213
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    invoke-static {p1, p2, p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetLayoutUtil;->updateScrollBarView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Landroid/widget/ScrollView;Z)V

    :cond_7
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    .line 918
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 919
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 4

    .line 829
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 830
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLyrics() isEmptyLyrics = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const-string p1, ""

    .line 833
    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 836
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsBtn:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 837
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updateLyricsBtn(Z)Z

    .line 840
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz p1, :cond_3

    xor-int/lit8 v1, v0, 0x1

    .line 841
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    if-eqz v0, :cond_4

    .line 844
    iget-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsCoverShowing:Z

    if-nez p1, :cond_4

    .line 845
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mLyricsScrollView:Landroid/widget/ScrollView;

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 7

    .line 770
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    const-string v0, ""

    if-eqz p1, :cond_3

    .line 776
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->facewidget_music_unknown:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMetadata : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.media.metadata.TITLE"

    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "android.media.metadata.ARTIST"

    .line 778
    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 779
    invoke-virtual {p1, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 780
    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 781
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 782
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 786
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, v2

    .line 790
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v3, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v2, v3, :cond_2

    .line 791
    iget-object v2, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicController;->requestLyrics()V

    :cond_2
    move-object v6, v1

    move-object v1, p1

    move-object p1, v0

    move-object v0, v6

    goto :goto_1

    .line 794
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v1, "setMetadata : null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    move-object v1, p1

    move-object p1, v0

    .line 797
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 798
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 801
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 802
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 805
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    if-nez v1, :cond_6

    .line 807
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$drawable;->lock_music_player_img_default_cover:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 810
    :cond_6
    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverBitmap:Landroid/graphics/Bitmap;

    .line 811
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->createRoundedCoverBitmapDrawable(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    return-void
.end method

.method public setMusicSessionActivity(Landroid/app/PendingIntent;)V
    .locals 0

    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 263
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->getTag()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPlaybackState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->fromPlaybackState(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 268
    invoke-virtual {p1}, Landroid/support/v4/media/session/PlaybackStateCompat;->getActions()J

    move-result-wide v3

    const-wide/16 v5, 0x10

    and-long/2addr v5, v3

    const-wide/16 v7, 0x0

    cmp-long p1, v5, v7

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    .line 269
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsPrevSupported:Z

    const-wide/16 v5, 0x20

    and-long/2addr v3, v5

    cmp-long p1, v3, v7

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    .line 270
    :goto_2
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsNextSupported:Z

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updatePrevNextAlpha()V

    .line 274
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->setPlayBtnImage(Z)V

    return-void
.end method

.method public setSessionEnabled(Z)V
    .locals 4

    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mIsSessionEnabled:Z

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->updatePrevNextAlpha()V

    .line 299
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPauseBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mPauseBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    move v3, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 309
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 310
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 314
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_5

    move v3, v1

    goto :goto_2

    :cond_5
    move v3, v2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 318
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    if-eqz p1, :cond_7

    move v3, v1

    goto :goto_3

    :cond_7
    move v3, v2

    .line 319
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 322
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_a

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    move v1, v2

    .line 323
    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_a
    return-void
.end method

.method public showExternalActivity()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public updateGravity(IZ)V
    .locals 2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v0, v1, :cond_a

    iget v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 590
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p2, v0, :cond_3

    :cond_2
    return-void

    .line 595
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz p2, :cond_4

    .line 596
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 599
    :cond_4
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz p2, :cond_5

    .line 600
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 603
    :cond_5
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_6

    .line 604
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 607
    :cond_6
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_7

    .line 608
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 611
    :cond_7
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz p2, :cond_8

    .line 612
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 615
    :cond_8
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/music/FaceWidgetMusicPage;->mNoMusicContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_9

    .line 616
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInFrameLayout(Landroid/view/View;I)V

    .line 619
    :cond_9
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    :cond_a
    :goto_0
    return-void
.end method
