.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;->INSTANCE:Lcom/android/systemui/statusbar/phone/-$$Lambda$SimpleStatusBarIconController$FVAuNN2LQHRYhsdQv2oLGUe4KkA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    check-cast p2, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;

    invoke-static {p1, p2}, Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController;->lambda$new$0(Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;Lcom/android/systemui/statusbar/phone/SimpleStatusBarIconController$TimeOrderKey;)I

    move-result p0

    return p0
.end method
