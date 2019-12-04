.class Lcom/android/systemui/appdock/model/AppDockAppListLoader$3$1;
.super Ljava/lang/Object;
.source "AppDockAppListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;

.field final synthetic val$d:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 509
    iput-object p1, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3$1;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;

    iput-object p2, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3$1;->this$1:Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;

    iget-object v0, v0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3;->val$info:Lcom/android/systemui/appdock/model/AppDockItemInfo;

    iget-object p0, p0, Lcom/android/systemui/appdock/model/AppDockAppListLoader$3$1;->val$d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Lcom/android/systemui/appdock/model/AppDockItemInfo;->notifyAppDataLoaded(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
