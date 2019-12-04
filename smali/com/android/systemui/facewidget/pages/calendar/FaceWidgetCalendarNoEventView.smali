.class public Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;
.super Landroid/widget/LinearLayout;
.source "FaceWidgetCalendarNoEventView.java"


# instance fields
.field private mContentView:Landroid/widget/TextView;

.field private mOpenFaceWidgetCalendarView:Landroid/widget/Button;

.field private mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private closeWindow()V
    .locals 1

    .line 103
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/facewidget/FaceWidgetWindowManager;

    move-result-object p0

    const-string v0, "servicebox_calendar"

    invoke-virtual {p0, v0}, Lcom/android/systemui/facewidget/FaceWidgetWindowManager;->hideFloatingView(Ljava/lang/String;)V

    return-void
.end method

.method private initViews()V
    .locals 4

    .line 70
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_events_content:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mContentView:Landroid/widget/TextView;

    .line 71
    sget v0, Lcom/android/systemui/R$id;->facewidget_no_events_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mOpenFaceWidgetCalendarView:Landroid/widget/Button;

    .line 73
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.INSERT"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 74
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 75
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x1

    .line 74
    invoke-virtual {v1, v0, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mOpenFaceWidgetCalendarView:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/16 v2, 0x8

    .line 78
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mOpenFaceWidgetCalendarView:Landroid/widget/Button;

    if-eqz v1, :cond_1

    .line 83
    new-instance v2, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarNoEventView$EOn1sj4PL7nNI0THvISrce2y4SQ;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/facewidget/pages/calendar/-$$Lambda$FaceWidgetCalendarNoEventView$EOn1sj4PL7nNI0THvISrce2y4SQ;-><init>(Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->updateViews()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initViews$0$FaceWidgetCalendarNoEventView(Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    .line 84
    iget-object p2, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/facewidget/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    .line 85
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->closeWindow()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 65
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->updateViews()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->initViews()V

    return-void
.end method

.method public setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mStatusCallback:Lcom/android/systemui/facewidget/KeyguardStatusCallback;

    return-void
.end method

.method public updateViews()V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/android/systemui/facewidget/pages/calendar/FaceWidgetCalendarNoEventView;->mContentView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->facewidget_event_no_events:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
