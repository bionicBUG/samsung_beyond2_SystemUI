.class Lcom/android/systemui/util/SystemUIImsManager$1;
.super Ljava/lang/Object;
.source "SystemUIImsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/util/SystemUIImsManager;->createImsManager(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/SystemUIImsManager;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/systemui/util/SystemUIImsManager;I)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    iput p2, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "SystemUIImsManager"

    const-string v1, "createImsManager : run"

    .line 81
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    new-instance v2, Lcom/sec/ims/ImsManager;

    iget-object v3, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v3}, Lcom/android/systemui/util/SystemUIImsManager;->access$100(Lcom/android/systemui/util/SystemUIImsManager;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/util/SystemUIImsManager$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/util/SystemUIImsManager$1$1;-><init>(Lcom/android/systemui/util/SystemUIImsManager$1;)V

    iget v5, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    invoke-direct {v2, v3, v4, v5}, Lcom/sec/ims/ImsManager;-><init>(Landroid/content/Context;Lcom/sec/ims/ImsManager$ConnectionListener;I)V

    aput-object v2, v0, v1

    .line 105
    iget-object v0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->this$0:Lcom/android/systemui/util/SystemUIImsManager;

    invoke-static {v0}, Lcom/android/systemui/util/SystemUIImsManager;->access$000(Lcom/android/systemui/util/SystemUIImsManager;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/util/SystemUIImsManager$1;->val$slotId:I

    aget-object p0, v0, p0

    invoke-virtual {p0}, Lcom/sec/ims/ImsManager;->connectService()V

    return-void
.end method
