.class Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;
.super Ljava/lang/Object;
.source "FloatingShortcutAreaView.java"

# interfaces
.implements Lcom/android/systemui/util/ShortcutManager$ShortcutCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateShortcutIconOnly(I)V
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$600(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method

.method public updateShortcutView(I)V
    .locals 0

    .line 222
    iget-object p1, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$200(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    .line 223
    iget-object p0, p0, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView$4;->this$0:Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;->access$600(Lcom/android/systemui/statusbar/floating/FloatingShortcutAreaView;)V

    return-void
.end method
