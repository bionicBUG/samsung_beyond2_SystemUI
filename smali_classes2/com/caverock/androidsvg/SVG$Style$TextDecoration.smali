.class public final enum Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
.super Ljava/lang/Enum;
.source "SVG.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/SVG$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TextDecoration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/caverock/androidsvg/SVG$Style$TextDecoration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final enum LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final enum None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

.field public static final enum Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1062
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v1, 0x0

    const-string v2, "None"

    invoke-direct {v0, v2, v1}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1063
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v2, 0x1

    const-string v3, "Underline"

    invoke-direct {v0, v3, v2}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1064
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v3, 0x2

    const-string v4, "Overline"

    invoke-direct {v0, v4, v3}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1065
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v4, 0x3

    const-string v5, "LineThrough"

    invoke-direct {v0, v5, v4}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1066
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v5, 0x4

    const-string v6, "Blink"

    invoke-direct {v0, v6, v5}, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    .line 1060
    sget-object v6, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->None:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v6, v0, v1

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Underline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Overline:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->LineThrough:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v4

    sget-object v1, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->Blink:Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    aput-object v1, v0, v5

    sput-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1060
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 1

    .line 1060
    const-class v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object p0
.end method

.method public static values()[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;
    .locals 1

    .line 1060
    sget-object v0, Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->$VALUES:[Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    invoke-virtual {v0}, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/caverock/androidsvg/SVG$Style$TextDecoration;

    return-object v0
.end method