.class public final Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;
.super Ljava/lang/Object;
.source "QSClockBellTower_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/QSClockBellTower;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;->INSTANCE:Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;
    .locals 1

    .line 19
    sget-object v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;->INSTANCE:Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/statusbar/policy/QSClockBellTower;
    .locals 1

    .line 15
    new-instance v0, Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/QSClockBellTower;
    .locals 0

    .line 11
    invoke-static {}, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;->provideInstance()Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/QSClockBellTower_Factory;->get()Lcom/android/systemui/statusbar/policy/QSClockBellTower;

    move-result-object p0

    return-object p0
.end method