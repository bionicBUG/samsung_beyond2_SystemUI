.class public final enum Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;
.super Ljava/lang/Enum;
.source "TestProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/service/TestProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VolumePanelApi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

.field public static final enum condition:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

.field public static final enum none:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

.field public static final enum reset:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

.field public static final enum test:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 12
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    const/4 v1, 0x0

    const-string v2, "none"

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->none:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    .line 13
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    const/4 v2, 0x1

    const-string v3, "reset"

    invoke-direct {v0, v3, v2}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    .line 14
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    const/4 v3, 0x2

    const-string v4, "condition"

    invoke-direct {v0, v4, v3}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->condition:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    .line 15
    new-instance v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    const/4 v4, 0x3

    const-string v5, "test"

    invoke-direct {v0, v5, v4}, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->test:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    .line 11
    sget-object v5, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->none:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    aput-object v5, v0, v1

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->reset:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->condition:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->test:Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;
    .locals 1

    .line 11
    const-class v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;
    .locals 1

    .line 11
    sget-object v0, Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->$VALUES:[Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    invoke-virtual {v0}, [Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/volume/service/TestProtocol$VolumePanelApi;

    return-object v0
.end method
