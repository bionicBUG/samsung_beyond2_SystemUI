.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;
.super Landroid/widget/LinearLayout;
.source "FaceWidgetCalendarEventListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView$CalenderInfoUpdateCompleteListener;
    }
.end annotation


# instance fields
.field private mAlreadyUpdated:Z

.field private mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView$CalenderInfoUpdateCompleteListener;

.field private mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

.field private mEventList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListViewCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMaxEventCnt:I

.field private mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

.field private mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 71
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 51
    sget-object v0, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mMaxEventCnt:I

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mListViewCache:Ljava/util/HashMap;

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mAlreadyUpdated:Z

    .line 58
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v1, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$PnIM6910vpMt8DMjWLAP3KcKMd0;

    invoke-direct {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$PnIM6910vpMt8DMjWLAP3KcKMd0;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;)V

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    const-string v1, "layout_inflater"

    .line 77
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    .line 79
    sget-object v1, Lcom/android/systemui/R$styleable;->FaceWidgetEventList:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 81
    sget v2, Lcom/android/systemui/R$styleable;->FaceWidgetEventList_maxEventCnt:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mMaxEventCnt:I

    .line 82
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 85
    :cond_0
    sget-object v1, Lcom/android/systemui/R$styleable;->FaceWidgetPage:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 87
    sget p2, Lcom/android/systemui/R$styleable;->FaceWidgetPage_pageType:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p3, 0x1

    if-eq p2, p3, :cond_3

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    const/4 p3, 0x3

    if-eq p2, p3, :cond_1

    .line 102
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    .line 99
    :cond_1
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    .line 96
    :cond_2
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    .line 93
    :cond_3
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->EXPAND:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    goto :goto_0

    .line 90
    :cond_4
    sget-object p2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->SMALL:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    iput-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    .line 104
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_5
    return-void
.end method

.method private closeWindow()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v1, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v0, v1, :cond_0

    return-void

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object p0

    const-string v0, "servicebox_calendar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private getEventView(I)Landroid/view/View;
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mListViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v2, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->facewidget_today_event_item_big:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 192
    :cond_0
    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->AOD:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v2, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->facewidget_today_event_item_aod:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->facewidget_today_event_item_small:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 198
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mListViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    .line 202
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getEventView() position = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " return : convertView is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "FaceWidgetCalendarEventListView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 206
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 207
    sget v2, Lcom/android/systemui/R$id;->facewidget_today_event_time:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 208
    sget v3, Lcom/android/systemui/R$id;->facewidget_today_event_title:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 209
    sget v4, Lcom/android/systemui/R$id;->facewidget_today_event_divider:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 211
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventList:Ljava/util/ArrayList;

    if-eqz v5, :cond_b

    .line 213
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-le v5, p1, :cond_4

    .line 214
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    :cond_4
    if-eqz v1, :cond_b

    if-eqz v2, :cond_7

    .line 218
    iget-object v5, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v6, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v5, v6, :cond_5

    .line 219
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFormattedStartEndTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 221
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFormattedStartTime(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_6

    .line 223
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 224
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->facewidget_today_event_time_first_event_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 225
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 229
    :cond_6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "facewidget_today_event_time_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_7
    if-eqz v3, :cond_a

    if-nez p1, :cond_8

    .line 232
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v5, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v2, v5, :cond_8

    const/4 v2, 0x0

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$dimen;->facewidget_today_first_event_title:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v2, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_2

    :cond_8
    const/4 v2, 0x1

    if-ne p1, v2, :cond_9

    .line 234
    iget-object v2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v5, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-eq v2, v5, :cond_9

    if-eqz v4, :cond_9

    .line 235
    sget v2, Lcom/android/systemui/R$id;->facewidget_today_event:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 236
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$dimen;->facewidget_today_second_event_top_margin:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 238
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    :cond_9
    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFormattedTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facewidget_today_event_title_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    :cond_a
    if-eqz v4, :cond_b

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "facewidget_today_event_divider_"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    :cond_b
    return-object v0
.end method


# virtual methods
.method public synthetic lambda$new$0$FaceWidgetCalendarEventListView(Ljava/util/ArrayList;)V
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->updateFaceWidgetCalendarInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method public synthetic lambda$updateFaceWidgetCalendarInfo$1$FaceWidgetCalendarEventListView(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1

    .line 162
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 163
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;

    if-nez p1, :cond_1

    return-void

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;->getFaceWidgetCalendarActivityIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->closeWindow()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 117
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 122
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 123
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->removeEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 110
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 111
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventChangedListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->addEventChangedListener(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager$EventChangedListener;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->closeWindow()V

    .line 260
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public setOutOfBoundItemsVisibility(Landroid/graphics/Rect;I)V
    .locals 3

    const/4 v0, 0x0

    .line 264
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 265
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 266
    invoke-virtual {v1, p1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 267
    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-void
.end method

.method public updateFaceWidgetCalendarInfo()V
    .locals 1

    .line 127
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarManager;->getCachedEvents()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->updateFaceWidgetCalendarInfo(Ljava/util/ArrayList;)V

    return-void
.end method

.method public updateFaceWidgetCalendarInfo(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarData;",
            ">;)V"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 132
    :try_start_0
    iput-boolean v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mAlreadyUpdated:Z

    .line 133
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p1, :cond_0

    const-string v0, "FaceWidgetCalendarEventListView"

    const-string v2, "There\'s no event"

    .line 136
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mEventList:Ljava/util/ArrayList;

    .line 139
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    if-eqz p1, :cond_8

    .line 141
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v2, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mMaxEventCnt:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 149
    invoke-direct {p0, v1}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->getEventView(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 156
    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_4
    const/4 v3, -0x1

    const/4 v4, -0x2

    .line 158
    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 160
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v4, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v3, v4, :cond_5

    .line 161
    new-instance v3, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarEventListView$sgmpC4uob2-4HOcI2rUL2i0uQDQ;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 177
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView$CalenderInfoUpdateCompleteListener;

    if-eqz v0, :cond_7

    .line 178
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mCalenderInfoUpdateCompleteListener:Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView$CalenderInfoUpdateCompleteListener;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView$CalenderInfoUpdateCompleteListener;->onCompleted()V

    :cond_7
    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mAlreadyUpdated:Z

    .line 181
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->updateViewStyleOnWhiteWallpaper()V

    return-void

    :catchall_0
    move-exception p0

    .line 181
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_8
    :goto_2
    const-string p0, "FaceWidgetCalendarEventListView"

    const-string/jumbo p1, "updateFaceWidgetCalendarInfo() return : event list is null"

    .line 142
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 133
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method public updateViewStyleOnWhiteWallpaper()V
    .locals 5

    const-string/jumbo v0, "top"

    .line 273
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    sget v0, Lcom/android/systemui/R$drawable;->facewidget_today_event_ripple_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->facewidget_today_event_ripple:I

    :goto_0
    const/4 v1, 0x0

    .line 276
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 277
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 278
    iget-object v3, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarEventListView;->mPageState:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    sget-object v4, Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;->BIG:Lcom/android/systemui/facewidget/pages/FaceWidgetPageState;

    if-ne v3, v4, :cond_1

    .line 279
    invoke-virtual {v2, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
