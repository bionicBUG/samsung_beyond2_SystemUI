.class Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
.super Ljava/lang/Object;
.source "NotificationSectionsManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/stack/StackScrollAlgorithm$SectionProvider;


# instance fields
.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

.field private mGentleHeaderVisible:Z

.field private mInitialized:Z

.field private mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

.field private final mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUseMultipleSections:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Z)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 280
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager$1;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 68
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 72
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method private adjustGentleHeaderVisibilityAndPosition(I)V
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 160
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 161
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v3

    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    if-nez v0, :cond_1

    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez v0, :cond_2

    .line 168
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz p1, :cond_6

    .line 169
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 170
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 173
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-nez v0, :cond_4

    .line 174
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeTransientView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->setTransientContainer(Landroid/view/ViewGroup;)V

    .line 182
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v0, p1, -0x1

    if-eq v3, v0, :cond_6

    if-ge v3, p1, :cond_5

    add-int/lit8 p1, p1, -0x1

    .line 192
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->changeViewPosition(Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method private getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeaderVisible:Z

    if-eqz v0, :cond_0

    .line 250
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0

    .line 252
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method private getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 6

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 267
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 268
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 269
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 270
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public static synthetic lambda$BXFcLGpgdZnd7PRimoedNDlJa8o(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->onClearGentleNotifsClick(Landroid/view/View;)V

    return-void
.end method

.method private onClearGentleNotifsClick(Landroid/view/View;)V
    .locals 0

    .line 297
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    if-eqz p0, :cond_0

    .line 298
    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public beginsSection(Landroid/view/View;)Z
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFirstGentleNotif()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method getGentleHeaderView()Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 244
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    return-object p0
.end method

.method initialize(Landroid/view/LayoutInflater;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 80
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mInitialized:Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->reinflateViews(Landroid/view/LayoutInflater;)V

    .line 82
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "NotificationSectionsManager already initialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method onUiModeChanged()V
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->onUiModeChanged()V

    return-void
.end method

.method reinflateViews(Landroid/view/LayoutInflater;)V
    .locals 5

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 91
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTransientContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    .line 99
    :goto_1
    sget v2, Lcom/android/systemui/R$layout;->status_bar_notification_section_header:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    .line 104
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    new-instance v2, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/notification/stack/-$$Lambda$NotificationSectionsManager$BXFcLGpgdZnd7PRimoedNDlJa8o;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;)V

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setOnClearAllClickListener(Landroid/view/View$OnClickListener;)V

    if-eq v0, v1, :cond_2

    .line 107
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    invoke-virtual {p1, p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    return-void
.end method

.method setOnClearGentleNotifsClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mOnClearGentleNotifsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method updateFirstAndLastViewsInSections(Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/stack/NotificationSection;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Z
    .locals 5

    .line 208
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 210
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getLastVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v0

    .line 212
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->getFirstVisibleChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v2

    .line 213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getLastHighPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object v3

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->getFirstLowPriorityChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    .line 216
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 217
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 219
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 221
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 223
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 224
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 225
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 226
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 229
    invoke-virtual {p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 230
    invoke-virtual {p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 231
    invoke-virtual {p2, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    :goto_0
    if-ne v3, v0, :cond_2

    if-eq p0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 236
    :cond_4
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setFirstVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    .line 237
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/notification/stack/NotificationSection;->setLastVisibleChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return v1
.end method

.method updateSectionBoundaries()V
    .locals 6

    .line 131
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mUseMultipleSections:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    const/4 v0, -0x1

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 140
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 141
    instance-of v4, v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    .line 143
    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 144
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isTopBucket()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    iput-object v3, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mFirstGentleNotif:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move v0, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->adjustGentleHeaderVisibilityAndPosition(I)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mGentleHeader:Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;->mParent:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    const/4 v1, 0x2

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->hasActiveClearableNotifications(I)Z

    move-result p0

    .line 154
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/stack/SectionHeaderView;->setAreThereDismissableGentleNotifs(Z)V

    return-void
.end method
