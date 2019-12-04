.class synthetic Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;
.super Ljava/lang/Object;
.source "MultiSIMPreferredSlotBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 593
    invoke-static {}, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->values()[Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    :try_start_0
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->VOICE:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->SMS:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$16;->$SwitchMap$com$android$systemui$qs$bar$MultiSIMPreferredSlotBar$ButtonType:[I

    sget-object v1, Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;->DATA:Lcom/android/systemui/qs/bar/MultiSIMPreferredSlotBar$ButtonType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
