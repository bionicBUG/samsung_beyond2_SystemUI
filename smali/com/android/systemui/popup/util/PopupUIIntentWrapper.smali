.class public Lcom/android/systemui/popup/util/PopupUIIntentWrapper;
.super Ljava/lang/Object;
.source "PopupUIIntentWrapper.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/popup/util/PopupUIIntentWrapper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getAction(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    .line 15
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBooleanExtra(Landroid/content/Intent;Ljava/lang/String;Z)Z
    .locals 0

    .line 23
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 0

    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 0

    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getStringExtra(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
