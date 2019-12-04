.class Lcom/android/systemui/classifier/HumanInteractionClassifier$1;
.super Landroid/database/ContentObserver;
.source "HumanInteractionClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/HumanInteractionClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/HumanInteractionClassifier;


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/android/systemui/classifier/HumanInteractionClassifier$1;->this$0:Lcom/android/systemui/classifier/HumanInteractionClassifier;

    invoke-static {p0}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->access$000(Lcom/android/systemui/classifier/HumanInteractionClassifier;)V

    return-void
.end method
