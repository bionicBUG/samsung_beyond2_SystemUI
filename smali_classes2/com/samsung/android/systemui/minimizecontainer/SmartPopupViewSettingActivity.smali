.class public Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;
.super Landroid/app/Activity;
.source "SmartPopupViewSettingActivity.java"


# static fields
.field private static final DEBUG:Z

.field private static final mSuggestedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

.field mEnablePackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mInstalledSuggestedPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mMultiWindowSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSuggestArea:Landroid/widget/LinearLayout;

.field private mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 27
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/BubbleContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->DEBUG:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.messaging"

    const-string v2, "com.verizon.messaging.vzmsgs"

    const-string v3, "com.kakao.talk"

    const-string v4, "jp.naver.line.android"

    const-string v5, "com.sds.mysinglesquare"

    const-string v6, "com.samsung.knox.message"

    const-string v7, "com.whatsapp"

    const-string v8, "com.google.android.talk"

    const-string v9, "com.sgiggle.production"

    const-string v10, "com.nimbuzz"

    const-string v11, "kik.android"

    const-string v12, "com.bsb.hike"

    const-string v13, "com.viber.voip"

    const-string v14, "com.tencent.mm"

    const-string v15, "org.telegram.messenger"

    const-string v16, "com.skype.raider"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedPackageList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 25
    sget-boolean v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)Landroid/content/Context;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppContext:Landroid/content/Context;

    return-object p0
.end method

.method private getMultiWindowSupportPackageList()V
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppContext:Landroid/content/Context;

    .line 115
    invoke-static {v0}, Landroidx/apppickerview/widget/AppPickerView;->getInstalledPackagesWithLabel(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mInstalledSuggestedPackageList:Ljava/util/ArrayList;

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;

    .line 121
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 122
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    :try_start_0
    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    iget-object v4, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 134
    invoke-direct {p0, v3}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->isMultiWindowSupport(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v2, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Landroidx/apppickerview/widget/AppPickerView$AppLabelInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 143
    sget-object v1, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedPackageList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 144
    iget-object v1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mInstalledSuggestedPackageList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private isMultiWindowSupport(Landroid/content/pm/ResolveInfo;)Z
    .locals 0

    .line 110
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget p0, p0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p0

    return p0
.end method

.method private setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V
    .locals 1

    .line 151
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity$1;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)V

    invoke-virtual {p1, v0}, Landroidx/apppickerview/widget/AppPickerView;->setOnBindListener(Landroidx/apppickerview/widget/AppPickerView$OnBindListener;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStart$0$SmartPopupViewSettingActivity()V
    .locals 4

    .line 73
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mInstalledSuggestedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x5

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestArea:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mInstalledSuggestedPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    .line 78
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    iget-object v3, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mMultiWindowSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v3, v1}, Landroidx/apppickerview/widget/AppPickerView;->setAppPickerView(ILjava/util/List;I)V

    .line 82
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-direct {p0, v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->setupOnBindListener(Landroidx/apppickerview/widget/AppPickerView;)V

    return-void
.end method

.method public synthetic lambda$onStart$1$SmartPopupViewSettingActivity()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->getMultiWindowSupportPackageList()V

    .line 72
    new-instance v0, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$KZ6KO7yryqOvsYLlBCsqTVoDOQY;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$KZ6KO7yryqOvsYLlBCsqTVoDOQY;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget p1, Lcom/android/systemui/R$layout;->activity_setting:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 54
    sget p1, Lcom/android/systemui/R$id;->package_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    .line 55
    sget p1, Lcom/android/systemui/R$id;->suggested_package_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/apppickerview/widget/AppPickerView;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    .line 56
    sget p1, Lcom/android/systemui/R$id;->suggest_area:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestArea:Landroid/widget/LinearLayout;

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/systemui/R$color;->sesl_round_and_bgcolor_light:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    .line 59
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->semSetRoundedCornerColor(II)V

    .line 61
    iget-object p1, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppPickerView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    .line 62
    iget-object p0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mSuggestedAppView:Landroidx/apppickerview/widget/AppPickerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->semSetRoundedCorners(I)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 91
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 92
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    :try_start_0
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.Settings$UsefulFeatureMainActivity"

    .line 95
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    .line 106
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 68
    iget-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewDB;->getPackageStrListFromDB(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;->mEnablePackageList:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$BTy2LLzsFPj9l_X3R0EvUzAVHO4;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/minimizecontainer/-$$Lambda$SmartPopupViewSettingActivity$BTy2LLzsFPj9l_X3R0EvUzAVHO4;-><init>(Lcom/samsung/android/systemui/minimizecontainer/SmartPopupViewSettingActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 85
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
