.class Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;
.super Ljava/lang/Object;
.source "IndicatorGardenJamTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FakeIndicatorIcon"
.end annotation


# instance fields
.field public DescriptionTag:Ljava/lang/String;

.field public DrawableId:I

.field public SlotName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->SlotName:Ljava/lang/String;

    .line 141
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DrawableId:I

    .line 142
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/IndicatorGardenJamTrigger$FakeIndicatorIcon;->DescriptionTag:Ljava/lang/String;

    return-void
.end method
