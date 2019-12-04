.class Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "NavigationBarEdgePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 217
    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F
    .locals 0

    .line 225
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$100(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F

    move-result p0

    return p0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    .line 217
    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;->getValue(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;)F

    move-result p0

    return p0
.end method

.method public setValue(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V
    .locals 0

    .line 220
    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;->access$000(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 217
    check-cast p1, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel$2;->setValue(Lcom/android/systemui/statusbar/phone/NavigationBarEdgePanel;F)V

    return-void
.end method
