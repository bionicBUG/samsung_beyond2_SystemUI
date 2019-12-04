.class Landroidx/appcompat/widget/SeslSwitchBar$1;
.super Ljava/lang/Object;
.source "SeslSwitchBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/SeslSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/widget/SeslSwitchBar;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/SeslSwitchBar;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 123
    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-static {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->access$000(Landroidx/appcompat/widget/SeslSwitchBar;)Landroidx/appcompat/widget/SeslToggleSwitch;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-static {p1}, Landroidx/appcompat/widget/SeslSwitchBar;->access$000(Landroidx/appcompat/widget/SeslSwitchBar;)Landroidx/appcompat/widget/SeslToggleSwitch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 124
    iget-object p0, p0, Landroidx/appcompat/widget/SeslSwitchBar$1;->this$0:Landroidx/appcompat/widget/SeslSwitchBar;

    invoke-static {p0}, Landroidx/appcompat/widget/SeslSwitchBar;->access$000(Landroidx/appcompat/widget/SeslSwitchBar;)Landroidx/appcompat/widget/SeslToggleSwitch;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SeslSwitchBar;->setChecked(Z)V

    :cond_1
    return-void
.end method
