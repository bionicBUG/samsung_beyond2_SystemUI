.class public final synthetic Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;

    invoke-direct {v0}, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;-><init>()V

    sput-object v0, Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;->INSTANCE:Lcom/android/systemui/classifier/brightline/-$$Lambda$BrightLineFalsingManager$AiaSOz8R7zJnTp0oazL7DWdY4Kg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/systemui/classifier/brightline/FalsingClassifier;

    invoke-static {p1}, Lcom/android/systemui/classifier/brightline/BrightLineFalsingManager;->lambda$isFalseTouch$3(Lcom/android/systemui/classifier/brightline/FalsingClassifier;)Z

    move-result p0

    return p0
.end method
