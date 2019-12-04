.class Lcom/android/systemui/popup/data/DataConnectionErrorData$2;
.super Ljava/lang/Object;
.source "DataConnectionErrorData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/popup/data/DataConnectionErrorData;->getPButtonClickListener(Landroid/content/Context;IZLandroid/app/PendingIntent;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/popup/data/DataConnectionErrorData;Landroid/content/Context;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->this$0:Lcom/android/systemui/popup/data/DataConnectionErrorData;

    iput-object p2, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/systemui/popup/data/DataConnectionErrorData$2;->val$context:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    const/4 v0, 0x1

    .line 99
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    return-void
.end method
