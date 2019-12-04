.class Lcom/android/systemui/util/SettingsHelper$1;
.super Landroid/database/ContentObserver;
.source "SettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/SettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SettingsHelper;Landroid/os/Handler;)V
    .locals 0

    .line 300
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .line 302
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 307
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/util/SettingsHelper;->access$200(Lcom/android/systemui/util/SettingsHelper;)Lcom/android/systemui/util/SettingsHelper$ItemMap;

    move-result-object p1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/util/SettingsHelper;->access$100(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p1, v2, p2}, Lcom/android/systemui/util/SettingsHelper$ItemMap;->updateMapForUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 308
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange() COMPLETED elapsed= "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$1;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p0, p2}, Lcom/android/systemui/util/SettingsHelper;->access$300(Lcom/android/systemui/util/SettingsHelper;Landroid/net/Uri;)V

    return-void
.end method
