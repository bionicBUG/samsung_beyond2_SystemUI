.class Lcom/android/systemui/qs/bar/TestBar$1;
.super Ljava/lang/Object;
.source "TestBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/bar/TestBar;->inflateViews(Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/TestBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/bar/TestBar;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/systemui/qs/bar/TestBar$1;->this$0:Lcom/android/systemui/qs/bar/TestBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/android/systemui/qs/bar/TestBar$1;->this$0:Lcom/android/systemui/qs/bar/TestBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 35
    iget-object p0, p0, Lcom/android/systemui/qs/bar/TestBar$1;->this$0:Lcom/android/systemui/qs/bar/TestBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/bar/BarItemImpl;->changeBarType(I)V

    goto :goto_0

    .line 36
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/TestBar$1;->this$0:Lcom/android/systemui/qs/bar/TestBar;

    invoke-virtual {p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->getType()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 37
    iget-object p0, p0, Lcom/android/systemui/qs/bar/TestBar$1;->this$0:Lcom/android/systemui/qs/bar/TestBar;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/bar/BarItemImpl;->changeBarType(I)V

    :cond_1
    :goto_0
    return-void
.end method
