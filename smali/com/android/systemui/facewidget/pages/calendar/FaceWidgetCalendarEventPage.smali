.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;
.super Lcom/android/systemui/facewidget/pages/FaceWidgetPage;
.source "FaceWidgetCalendarEventPage.java"


# instance fields
.field private mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

.field private final mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

.field private mHolder:Landroid/widget/FrameLayout;

.field private mInfoContainer:Landroid/widget/LinearLayout;

.field private mInformationAreaView:Landroid/widget/LinearLayout;

.field private mListBigView:Landroid/view/View;

.field private mListPageView:Landroid/view/View;

.field private mListRootView:Landroid/view/View;

.field private mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

.field private mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

.field private mScrollView:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    new-instance p1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventPage$-jWPV3J-loAkqNlrt0secs0R9Ko;

    invoke-direct {p1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventPage$-jWPV3J-loAkqNlrt0secs0R9Ko;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;)V

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    return-void
.end method

.method private init()V
    .locals 1

    .line 107
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_page_holder:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 93
    sget-object p0, Landroid/provider/CalendarContract;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string/jumbo v2, "time"

    .line 94
    invoke-virtual {p0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 95
    invoke-static {p0, v0, v1}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    const/4 v0, 0x1

    .line 97
    invoke-interface {p1, p0, v0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateDate()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;->updateDay()V

    :cond_0
    return-void
.end method

.method private updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z
    .locals 5

    .line 334
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 337
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isLandscape()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 338
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    .line 339
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 340
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$dimen;->facewidget_page_big_item_padding_side:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    if-eq p1, v2, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_2

    goto :goto_2

    .line 345
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListBigView:Landroid/view/View;

    if-eqz p1, :cond_3

    .line 346
    iget v4, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mNavigationBarHeight:I

    invoke-virtual {p1, v4, v1, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 348
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-nez p1, :cond_5

    if-eqz v0, :cond_4

    .line 350
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    invoke-virtual {p0, v1, v1, v3, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_1

    .line 352
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    invoke-virtual {p0, v3, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_5
    :goto_1
    return v2

    :cond_6
    :goto_2
    return v1
.end method

.method private updateListViewLayout()V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 277
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_1

    return-void

    .line 282
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v1, v2, :cond_5

    .line 283
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 284
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsMKeyboardConnected:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez v1, :cond_3

    .line 285
    :cond_2
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_4

    .line 289
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 290
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updateNoEventsLayout()V
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 299
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 300
    iget-boolean v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mIsMKeyboardConnected:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/Rune;->NAVBAR_ENABLED:Z

    if-nez v1, :cond_1

    .line 301
    :cond_0
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    if-nez v1, :cond_2

    .line 305
    invoke-direct {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateLandscapeViewMargin(Landroid/widget/LinearLayout$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 306
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 309
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getEventCnt()I

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_6

    .line 310
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 311
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 313
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 314
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    if-eqz v0, :cond_9

    .line 317
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 320
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    if-eqz v0, :cond_7

    .line 321
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListRootView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 324
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    if-eqz v0, :cond_9

    .line 327
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 330
    :cond_9
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method

.method private updateTabView()V
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_4

    .line 230
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f1c28f6    # 0.61f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 231
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    if-le v1, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    int-to-float v1, v1

    const v4, 0x3f59999a    # 0.85f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 237
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    invoke-direct {p0, v4, v1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    .line 238
    iget-object v4, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    invoke-direct {p0, v4, v1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    .line 239
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    if-eqz v0, :cond_2

    .line 240
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/systemui/R$dimen;->facewidget_today_clock_bottom_margin_tablet:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v1, 0x800053

    .line 242
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 244
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListBigView:Landroid/view/View;

    if-eqz v0, :cond_5

    const/high16 v0, 0x40000000    # 2.0f

    if-nez v3, :cond_3

    .line 247
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v3, 0x3ef6872a    # 0.48149997f

    goto :goto_1

    .line 249
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v3, 0x3ec7ae14    # 0.39f

    :goto_1
    mul-float/2addr v1, v3

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 251
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListBigView:Landroid/view/View;

    invoke-virtual {p0, v0, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_2

    .line 254
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->facewidget_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->facewidget_today_holder_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 256
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInformationAreaView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateTabViewParams(Landroid/view/View;II)V

    :cond_5
    :goto_2
    return-void
.end method

.method private updateTabViewParams(Landroid/view/View;II)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 264
    :cond_0
    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p0, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 266
    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 267
    iput p3, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    return-void
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .locals 2

    const-string/jumbo v0, "top"

    .line 172
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInformationAreaView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 175
    sget v0, Lcom/android/systemui/R$drawable;->facewidget_today_no_event_ripple_dark:I

    goto :goto_0

    .line 176
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->facewidget_today_no_event_ripple:I

    .line 177
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInformationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method private updateViews()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->updateFaceWidgetCalendarInfo()V

    .line 166
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    if-eqz p0, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->updateViews()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected closeWindow()V
    .locals 3

    .line 364
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 366
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 367
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    const/4 v2, 0x4

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V

    .line 370
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->closeWindow()V

    return-void
.end method

.method protected getContentsView(Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;)Landroid/view/View;
    .locals 2

    .line 183
    iget-object v0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 184
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_0

    sget p1, Lcom/android/systemui/R$layout;->facewidget_today_main_big:I

    goto :goto_0

    .line 185
    :cond_0
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p1, v1, :cond_1

    sget p1, Lcom/android/systemui/R$layout;->facewidget_today_main_aod:I

    goto :goto_0

    .line 186
    :cond_1
    sget p1, Lcom/android/systemui/R$layout;->facewidget_today_main_small:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    .line 183
    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mHolder:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    const-string p0, "servicebox_calendar"

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->getTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 2

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FaceWidgetCalendarEventPage"

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
    .locals 3

    .line 191
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_info_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInfoContainer:Landroid/widget/LinearLayout;

    .line 192
    sget v0, Lcom/android/systemui/R$id;->facewidget_event_information_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInformationAreaView:Landroid/widget/LinearLayout;

    .line 193
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_0

    .line 194
    sget v0, Lcom/android/systemui/R$id;->facewidget_event_list_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListPageView:Landroid/view/View;

    .line 195
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_root_view_big:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListBigView:Landroid/view/View;

    goto :goto_0

    .line 197
    :cond_0
    sget v0, Lcom/android/systemui/R$id;->facewidget_event_list_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListRootView:Landroid/view/View;

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_1

    .line 201
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_scrollview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mScrollView:Landroid/widget/ScrollView;

    .line 203
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->facewidget_event_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->facewidget_today_clock_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mDateView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetTodayDateView;

    .line 206
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mListView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;

    if-eqz v0, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v1}, Lcom/android/systemui/facewidget/FaceWidgetController;->getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    .line 209
    :cond_2
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_events:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    .line 210
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mNoEventView:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;

    if-eqz p1, :cond_3

    .line 211
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mFaceWidgetController:Lcom/android/systemui/facewidget/FaceWidgetController;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/FaceWidgetController;->getStatusCallback()Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    .line 213
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->isFullScreenMode()Z

    move-result p1

    if-nez p1, :cond_4

    .line 214
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInformationAreaView:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventPage$YrXE-fFgfIBvYtKs1-dFDCBStJI;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventPage$YrXE-fFgfIBvYtKs1-dFDCBStJI;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateNoEventsLayout()V

    .line 220
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateListViewLayout()V

    .line 221
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mScrollView:Landroid/widget/ScrollView;

    const-string v2, "background"

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lcom/android/systemui/facewidget/utils/FaceWidgetLayoutUtil;->updateScrollBarView(Landroid/content/Context;Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;Landroid/widget/ScrollView;Z)V

    .line 222
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateTabView()V

    :cond_5
    return-void
.end method

.method public synthetic lambda$initViews$1$FaceWidgetCalendarEventPage(Landroid/view/View;)V
    .locals 1

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->getTag()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DP Touch up start service box"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->showFaceWidgetFullScreen()V

    return-void
.end method

.method public synthetic lambda$new$0$FaceWidgetCalendarEventPage(Ljava/util/ArrayList;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateNoEventsLayout()V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateListViewLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 117
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    .line 118
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 129
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateViews()V

    .line 130
    invoke-super {p0, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->onDetachedFromWindow()V

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 102
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 103
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->init()V

    return-void
.end method

.method protected prepareTransition(Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 384
    :cond_0
    new-instance p0, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    invoke-direct {p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;-><init>()V

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;->setClipFace(I)Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;

    move-result-object p0

    const-string v0, "facewidget_event_list"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;->add(Ljava/lang/String;Lcom/android/systemui/facewidget/utils/FaceWidgetTransitionOption;)Lcom/android/systemui/facewidget/utils/FaceWidgetTransition;

    return-void
.end method

.method public varargs refreshViews(Lcom/android/systemui/facewidget/FaceWidgetRefreshReason;[Ljava/lang/Object;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->updateDate()V

    return-void
.end method

.method public updateGravity(IZ)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v0, v1, :cond_5

    iget v1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 144
    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v1, :cond_2

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne p2, v0, :cond_3

    :cond_2
    return-void

    .line 149
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventPage;->mInfoContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_4

    .line 150
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->setGravityInLinearLayout(Landroid/view/View;I)V

    .line 153
    :cond_4
    iput p1, p0, Lcom/android/systemui/facewidget/pages/FaceWidgetPage;->mGravity:I

    :cond_5
    :goto_0
    return-void
.end method
