.class Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->showSlotListPopupWindow(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 921
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$1800(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 922
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 923
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    return-void

    .line 926
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$1800(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2300(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)I

    move-result p1

    if-nez p1, :cond_3

    .line 927
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$502(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Z)Z

    .line 929
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$400(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$PrefferedSlotButton;->updateTextColor()V

    .line 930
    iget-object p1, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-static {p1, v1, v0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$2100(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;I)V

    .line 932
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$15;->this$0:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;

    invoke-static {p0}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;->access$1500(Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;)V

    return-void
.end method
