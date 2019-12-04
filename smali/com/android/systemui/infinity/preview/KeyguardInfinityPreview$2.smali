.class Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;
.super Ljava/lang/Object;
.source "KeyguardInfinityPreview.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;-><init>(Landroid/content/Context;Ljava/lang/String;IIZZLcom/android/systemui/infinity/preview/KeyguardInfinityPreview$InfinityCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->access$200(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)Lcom/android/systemui/infinity/preview/GalaxyViewCircle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->reset()V

    .line 187
    iget-object p0, p0, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview$2;->this$0:Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;

    invoke-static {p0}, Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;->access$100(Lcom/android/systemui/infinity/preview/KeyguardInfinityPreview;)V

    const/4 p0, 0x1

    return p0
.end method
