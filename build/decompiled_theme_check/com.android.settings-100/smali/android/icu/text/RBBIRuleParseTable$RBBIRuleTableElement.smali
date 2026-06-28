.class Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;
.super Ljava/lang/Object;
.source "RBBIRuleParseTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RBBIRuleParseTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RBBIRuleTableElement"
.end annotation


# instance fields
.field fAction:S

.field fCharClass:S

.field fNextChar:Z

.field fNextState:S

.field fPushState:S

.field fStateName:Ljava/lang/String;


# direct methods
.method constructor <init>(SIIIZLjava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fAction:S

    int-to-short p1, p2

    .line 76
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fCharClass:S

    int-to-short p1, p3

    .line 77
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextState:S

    int-to-short p1, p4

    .line 78
    iput-short p1, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fPushState:S

    .line 79
    iput-boolean p5, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fNextChar:Z

    .line 80
    iput-object p6, p0, Landroid/icu/text/RBBIRuleParseTable$RBBIRuleTableElement;->fStateName:Ljava/lang/String;

    return-void
.end method
