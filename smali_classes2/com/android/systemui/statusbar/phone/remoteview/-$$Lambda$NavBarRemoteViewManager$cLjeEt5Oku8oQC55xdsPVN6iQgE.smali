.class public final synthetic Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$cLjeEt5Oku8oQC55xdsPVN6iQgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$cLjeEt5Oku8oQC55xdsPVN6iQgE;->f$0:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/remoteview/-$$Lambda$NavBarRemoteViewManager$cLjeEt5Oku8oQC55xdsPVN6iQgE;->f$0:I

    check-cast p1, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteViewManager;->lambda$getNavbarRemoteView$1(ILcom/android/systemui/statusbar/phone/remoteview/NavBarRemoteView;)Z

    move-result p0

    return p0
.end method
