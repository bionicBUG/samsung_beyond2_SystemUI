.class public final enum Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;
.super Ljava/lang/Enum;
.source "ShadeViewRefactor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/ShadeViewRefactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RefactorComponent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum ADAPTER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum COORDINATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum DECORATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum INPUT:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum LAYOUT_ALGORITHM:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum SHADE_VIEW:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

.field public static final enum STATE_RESOLVER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v1, 0x0

    const-string v2, "ADAPTER"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->ADAPTER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 32
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v2, 0x1

    const-string v3, "LAYOUT_ALGORITHM"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->LAYOUT_ALGORITHM:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 33
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v3, 0x2

    const-string v4, "STATE_RESOLVER"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->STATE_RESOLVER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v4, 0x3

    const-string v5, "DECORATOR"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->DECORATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 35
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v5, 0x4

    const-string v6, "INPUT"

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->INPUT:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 36
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v6, 0x5

    const-string v7, "COORDINATOR"

    invoke-direct {v0, v7, v6}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->COORDINATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v7, 0x6

    const-string v8, "SHADE_VIEW"

    invoke-direct {v0, v8, v7}, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->SHADE_VIEW:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    .line 30
    sget-object v8, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->ADAPTER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v8, v0, v1

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->LAYOUT_ALGORITHM:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->STATE_RESOLVER:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->DECORATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->INPUT:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->COORDINATOR:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->SHADE_VIEW:Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->$VALUES:[Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;
    .locals 1

    .line 30
    const-class v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;
    .locals 1

    .line 30
    sget-object v0, Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->$VALUES:[Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/notification/ShadeViewRefactor$RefactorComponent;

    return-object v0
.end method
