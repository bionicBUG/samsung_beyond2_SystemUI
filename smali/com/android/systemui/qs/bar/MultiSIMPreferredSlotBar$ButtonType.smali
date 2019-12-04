.class final enum Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
.super Ljava/lang/Enum;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ButtonType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

.field public static final enum VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;


# instance fields
.field private final index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 172
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v1, 0x0

    const-string v2, "VOICE"

    invoke-direct {v0, v2, v1, v1}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    .line 173
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v2, 0x1

    const-string v3, "SMS"

    invoke-direct {v0, v3, v2, v2}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    .line 174
    new-instance v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v3, 0x2

    const-string v4, "DATA"

    invoke-direct {v0, v4, v3, v3}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    .line 171
    sget-object v4, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v4, v0, v1

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->$VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 178
    iput p3, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
    .locals 1

    .line 171
    const-class v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-object p0
.end method

.method public static values()[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;
    .locals 1

    .line 171
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->$VALUES:[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    return-object v0
.end method


# virtual methods
.method public getIndex()I
    .locals 0

    .line 182
    iget p0, p0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->index:I

    return p0
.end method
