.class Lcom/android/systemui/assist/AssistOrbContainer$1;
.super Ljava/lang/Object;
.source "AssistOrbContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/assist/AssistOrbContainer;->show(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/assist/AssistOrbContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/assist/AssistOrbContainer;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/assist/AssistOrbContainer;->access$002(Lcom/android/systemui/assist/AssistOrbContainer;Z)Z

    .line 74
    iget-object p0, p0, Lcom/android/systemui/assist/AssistOrbContainer$1;->this$0:Lcom/android/systemui/assist/AssistOrbContainer;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
