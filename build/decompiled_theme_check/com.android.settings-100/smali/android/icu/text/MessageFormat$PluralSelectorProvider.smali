.class final Landroid/icu/text/MessageFormat$PluralSelectorProvider;
.super Ljava/lang/Object;
.source "MessageFormat.java"

# interfaces
.implements Landroid/icu/text/PluralFormat$PluralSelector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PluralSelectorProvider"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private msgFormat:Landroid/icu/text/MessageFormat;

.field private rules:Landroid/icu/text/PluralRules;

.field private type:Landroid/icu/text/PluralRules$PluralType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2038
    const-class v0, Landroid/icu/text/MessageFormat;

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 0

    .line 2039
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2040
    iput-object p1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    .line 2041
    iput-object p2, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    return-void
.end method


# virtual methods
.method public select(Ljava/lang/Object;D)Ljava/lang/String;
    .locals 3

    .line 2045
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    if-nez v0, :cond_0

    .line 2046
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v0}, Landroid/icu/text/MessageFormat;->access$700(Landroid/icu/text/MessageFormat;)Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->type:Landroid/icu/text/PluralRules$PluralType;

    invoke-static {v0, v1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    .line 2054
    :cond_0
    check-cast p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;

    .line 2055
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget v1, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->startIndex:I

    invoke-static {v0, v1}, Landroid/icu/text/MessageFormat;->access$800(Landroid/icu/text/MessageFormat;I)I

    move-result v0

    .line 2056
    iget-object v1, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    iget-object v2, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->argName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Landroid/icu/text/MessageFormat;->access$900(Landroid/icu/text/MessageFormat;ILjava/lang/String;)I

    move-result v0

    iput v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    .line 2057
    iget v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v0}, Landroid/icu/text/MessageFormat;->access$1000(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2058
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v0}, Landroid/icu/text/MessageFormat;->access$1000(Landroid/icu/text/MessageFormat;)Ljava/util/Map;

    move-result-object v0

    iget v1, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberArgIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/Format;

    iput-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    .line 2060
    :cond_1
    iget-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    if-nez v0, :cond_2

    .line 2061
    iget-object v0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->msgFormat:Landroid/icu/text/MessageFormat;

    invoke-static {v0}, Landroid/icu/text/MessageFormat;->access$1100(Landroid/icu/text/MessageFormat;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    const/4 v0, 0x1

    .line 2062
    iput-boolean v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->forReplaceNumber:Z

    .line 2065
    :cond_2
    iget-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    iget-object v1, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->number:Ljava/lang/Number;

    invoke-virtual {v0, v1}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->numberString:Ljava/lang/String;

    .line 2066
    iget-object v0, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    instance-of v0, v0, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_3

    .line 2067
    iget-object p1, p1, Landroid/icu/text/MessageFormat$PluralSelectorContext;->formatter:Ljava/text/Format;

    check-cast p1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p1, p2, p3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    .line 2068
    iget-object p0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$IFixedDecimal;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 2070
    :cond_3
    iget-object p0, p0, Landroid/icu/text/MessageFormat$PluralSelectorProvider;->rules:Landroid/icu/text/PluralRules;

    invoke-virtual {p0, p2, p3}, Landroid/icu/text/PluralRules;->select(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
