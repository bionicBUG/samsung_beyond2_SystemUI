.class Lcom/android/systemui/statusbar/KeyboardShortcuts$6;
.super Ljava/lang/Object;
.source "KeyboardShortcuts.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/KeyboardShortcuts;->populateKeyboardShortcuts(Landroid/widget/LinearLayout;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

.field final synthetic val$shortcutView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Landroid/view/View;)V
    .locals 0

    .line 867
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$shortcutView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 870
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$6;->val$shortcutView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
