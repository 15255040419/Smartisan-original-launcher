.class public Landroid/icu/text/PluralFormat;
.super Landroid/icu/text/UFormat;
.source "PluralFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/PluralFormat$PluralSelectorAdapter;,
        Landroid/icu/text/PluralFormat$PluralSelector;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient msgPattern:Landroid/icu/text/MessagePattern;

.field private numberFormat:Landroid/icu/text/NumberFormat;

.field private transient offset:D

.field private parsedValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pattern:Ljava/lang/String;

.field private pluralRules:Landroid/icu/text/PluralRules;

.field private transient pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

.field private ulocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 187
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 188
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;)V
    .locals 3

    .line 219
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 220
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    .line 309
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 310
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 311
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3

    .line 197
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 198
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 3

    .line 254
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 255
    invoke-direct {p0, v0, p2, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;)V
    .locals 3

    .line 340
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 341
    invoke-direct {p0, v0, p2, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 342
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;Ljava/lang/String;Landroid/icu/text/NumberFormat;)V
    .locals 3

    .line 356
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 357
    invoke-direct {p0, v0, p2, p1, p4}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 358
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V
    .locals 3

    .line 231
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 232
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;Ljava/lang/String;)V
    .locals 3

    .line 325
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 326
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, p2, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 327
    invoke-virtual {p0, p3}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 3

    .line 294
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 295
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    invoke-direct {p0, v0, v1, p1, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 296
    invoke-virtual {p0, p2}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 277
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 147
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 153
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 167
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 174
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    const-wide/16 v1, 0x0

    .line 179
    iput-wide v1, p0, Landroid/icu/text/PluralFormat;->offset:D

    .line 547
    new-instance v1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    invoke-direct {v1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object v1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 278
    sget-object v1, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    sget-object v2, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v2}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2, v0}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    .line 279
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 0

    .line 209
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules$PluralType;)V
    .locals 0

    .line 266
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Landroid/icu/text/PluralRules;)V
    .locals 0

    .line 244
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Landroid/icu/text/PluralFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules;)V

    return-void
.end method

.method static synthetic access$000(Landroid/icu/text/PluralFormat;)Landroid/icu/text/PluralRules;
    .locals 0

    .line 133
    iget-object p0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    return-object p0
.end method

.method static findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I
    .locals 15

    move-object v0, p0

    .line 435
    invoke-virtual {p0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v1

    .line 437
    invoke-virtual/range {p0 .. p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v2

    .line 438
    invoke-virtual {v2}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    invoke-virtual {p0, v2}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v2

    add-int/lit8 v4, p1, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move/from16 v4, p1

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, v5

    move v5, v6

    :cond_1
    add-int/lit8 v8, v4, 0x1

    .line 467
    invoke-virtual {p0, v4}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v4

    .line 468
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    .line 469
    sget-object v10, Landroid/icu/text/MessagePattern$Part$Type;->ARG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v9, v10, :cond_2

    goto/16 :goto_4

    .line 474
    :cond_2
    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getPartType(I)Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part$Type;->hasNumericValue()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    add-int/lit8 v4, v8, 0x1

    .line 476
    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v8

    .line 477
    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getNumericValue(Landroid/icu/text/MessagePattern$Part;)D

    move-result-wide v8

    cmpl-double v8, p4, v8

    if-nez v8, :cond_3

    return v4

    :cond_3
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move v8, v4

    goto :goto_3

    :cond_4
    if-nez v6, :cond_9

    const-string/jumbo v9, "other"

    .line 484
    invoke-virtual {p0, v4, v9}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    if-nez v5, :cond_9

    if-eqz v7, :cond_5

    .line 487
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    goto :goto_2

    :cond_5
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move v5, v8

    goto :goto_3

    :cond_6
    if-nez v7, :cond_7

    sub-double v11, p4, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 496
    invoke-interface {v13, v14, v11, v12}, Landroid/icu/text/PluralFormat$PluralSelector;->select(Ljava/lang/Object;D)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_8

    .line 497
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move v6, v10

    goto :goto_1

    :cond_7
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    :cond_8
    :goto_1
    if-nez v6, :cond_a

    .line 504
    invoke-virtual {p0, v4, v7}, Landroid/icu/text/MessagePattern;->partSubstringMatches(Landroid/icu/text/MessagePattern$Part;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_2
    move v5, v8

    move v6, v10

    goto :goto_3

    :cond_9
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    .line 512
    :cond_a
    :goto_3
    invoke-virtual {p0, v8}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result v4

    add-int/2addr v4, v10

    if-lt v4, v1, :cond_1

    :goto_4
    return v5
.end method

.method private format(Ljava/lang/Number;D)Ljava/lang/String;
    .locals 10

    .line 591
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 597
    :cond_0
    iget-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    sub-double v2, p2, v0

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    .line 600
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 602
    :cond_1
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    :goto_0
    move-object v0, p1

    .line 605
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    instance-of v1, p1, Landroid/icu/text/DecimalFormat;

    if-eqz v1, :cond_2

    .line 606
    check-cast p1, Landroid/icu/text/DecimalFormat;

    invoke-virtual {p1, v2, v3}, Landroid/icu/text/DecimalFormat;->getFixedDecimal(D)Landroid/icu/text/PluralRules$IFixedDecimal;

    move-result-object p1

    goto :goto_1

    .line 608
    :cond_2
    new-instance p1, Landroid/icu/text/PluralRules$FixedDecimal;

    invoke-direct {p1, v2, v3}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(D)V

    :goto_1
    move-object v7, p1

    .line 610
    iget-object v4, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    move-wide v8, p2

    invoke-static/range {v4 .. v9}, Landroid/icu/text/PluralFormat;->findSubMessage(Landroid/icu/text/MessagePattern;ILandroid/icu/text/PluralFormat$PluralSelector;Ljava/lang/Object;D)I

    move-result p1

    const/4 p2, 0x0

    .line 614
    iget-object p3, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    .line 616
    :cond_3
    :goto_2
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v1

    .line 617
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v2

    .line 618
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v3

    .line 619
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v4, :cond_5

    if-nez p2, :cond_4

    .line 621
    iget-object p0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p0, p3, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 623
    :cond_4
    iget-object p0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, p0, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 625
    :cond_5
    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v2, v4, :cond_8

    sget-object v4, Landroid/icu/text/MessagePattern$Part$Type;->SKIP_SYNTAX:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v4, :cond_6

    iget-object v4, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 627
    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->jdkAposMode()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_3

    .line 636
    :cond_6
    sget-object v1, Landroid/icu/text/MessagePattern$Part$Type;->ARG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, v1, :cond_3

    if-nez p2, :cond_7

    .line 638
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 640
    :cond_7
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v1, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 642
    iget-object p3, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Landroid/icu/text/MessagePattern;->getLimitPartIndex(I)I

    move-result p1

    .line 643
    iget-object p3, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {p3, p1}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object p3

    invoke-virtual {p3}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    .line 644
    iget-object v1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-static {v1, v3, p3, p2}, Landroid/icu/text/MessagePattern;->appendReducedApostrophes(Ljava/lang/String;IILjava/lang/StringBuilder;)V

    goto :goto_2

    :cond_8
    :goto_3
    if-nez p2, :cond_9

    .line 629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 631
    :cond_9
    iget-object v4, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {p2, v4, p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    .line 632
    sget-object p3, Landroid/icu/text/MessagePattern$Part$Type;->REPLACE_NUMBER:Landroid/icu/text/MessagePattern$Part$Type;

    if-ne v2, p3, :cond_a

    .line 633
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    :cond_a
    invoke-virtual {v1}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result p3

    goto :goto_2

    .line 592
    :cond_b
    :goto_4
    iget-object p0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {p0, p1}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V
    .locals 0

    .line 375
    iput-object p3, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    if-nez p1, :cond_0

    .line 376
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p1, p2}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;Landroid/icu/text/PluralRules$PluralType;)Landroid/icu/text/PluralRules;

    move-result-object p1

    .line 377
    :cond_0
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 378
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    if-nez p4, :cond_1

    .line 379
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p4

    :cond_1
    iput-object p4, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 841
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 842
    new-instance p1, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/icu/text/PluralFormat$PluralSelectorAdapter;-><init>(Landroid/icu/text/PluralFormat;Landroid/icu/text/PluralFormat$1;)V

    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pluralRulesWrapper:Landroid/icu/text/PluralFormat$PluralSelectorAdapter;

    .line 845
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    .line 846
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 847
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->applyPattern(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private resetPattern()V
    .locals 2

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 384
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/icu/text/MessagePattern;->clear()V

    :cond_0
    const-wide/16 v0, 0x0

    .line 387
    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D

    return-void
.end method


# virtual methods
.method public applyPattern(Ljava/lang/String;)V
    .locals 2

    .line 400
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    .line 401
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-nez v0, :cond_0

    .line 402
    new-instance v0, Landroid/icu/text/MessagePattern;

    invoke-direct {v0}, Landroid/icu/text/MessagePattern;-><init>()V

    iput-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 405
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v0, p1}, Landroid/icu/text/MessagePattern;->parsePluralStyle(Ljava/lang/String;)Landroid/icu/text/MessagePattern;

    .line 406
    iget-object p1, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/icu/text/MessagePattern;->getPluralOffset(I)D

    move-result-wide v0

    iput-wide v0, p0, Landroid/icu/text/PluralFormat;->offset:D
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 408
    invoke-direct {p0}, Landroid/icu/text/PluralFormat;->resetPattern()V

    .line 409
    throw p1
.end method

.method public equals(Landroid/icu/text/PluralFormat;)Z
    .locals 0

    .line 816
    invoke-virtual {p0, p1}, Landroid/icu/text/PluralFormat;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 799
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 802
    :cond_1
    check-cast p1, Landroid/icu/text/PluralFormat;

    .line 803
    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    iget-object v3, p1, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    .line 804
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    iget-object v3, p1, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    .line 805
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    iget-object v3, p1, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    .line 806
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object p0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    iget-object p1, p1, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 807
    invoke-static {p0, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public final format(D)Ljava/lang/String;
    .locals 1

    .line 559
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 581
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_0

    .line 584
    check-cast p1, Ljava/lang/Number;

    .line 585
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/text/PluralFormat;->format(Ljava/lang/Number;D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 582
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\'"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not a Number"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hashCode()I
    .locals 1

    .line 824
    iget-object v0, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v0}, Landroid/icu/text/PluralRules;->hashCode()I

    move-result v0

    iget-object p0, p0, Landroid/icu/text/PluralFormat;->parsedValues:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Number;
    .locals 0

    .line 661
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 0

    .line 675
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method parseType(Ljava/lang/String;Landroid/icu/text/RbnfLenientScanner;Ljava/text/FieldPosition;)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 688
    iget-object v4, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_2

    .line 695
    :cond_0
    iget-object v4, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    invoke-virtual {v4}, Landroid/icu/text/MessagePattern;->countParts()I

    move-result v4

    .line 696
    invoke-virtual/range {p3 .. p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v7

    const/4 v8, 0x0

    if-gez v7, :cond_1

    move v7, v8

    :cond_1
    move v9, v8

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    :goto_0
    if-ge v9, v4, :cond_8

    .line 711
    iget-object v13, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v14, v9, 0x1

    invoke-virtual {v13, v9}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 712
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v9

    sget-object v13, Landroid/icu/text/MessagePattern$Part$Type;->ARG_SELECTOR:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v9, v13, :cond_2

    move v9, v14

    goto :goto_0

    .line 717
    :cond_2
    iget-object v9, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v13, v14, 0x1

    invoke-virtual {v9, v14}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v9

    .line 718
    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v15, Landroid/icu/text/MessagePattern$Part$Type;->MSG_START:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v14, v15, :cond_3

    move v9, v13

    goto :goto_0

    .line 723
    :cond_3
    iget-object v14, v0, Landroid/icu/text/PluralFormat;->msgPattern:Landroid/icu/text/MessagePattern;

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v14, v13}, Landroid/icu/text/MessagePattern;->getPart(I)Landroid/icu/text/MessagePattern$Part;

    move-result-object v13

    .line 724
    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getType()Landroid/icu/text/MessagePattern$Part$Type;

    move-result-object v14

    sget-object v5, Landroid/icu/text/MessagePattern$Part$Type;->MSG_LIMIT:Landroid/icu/text/MessagePattern$Part$Type;

    if-eq v14, v5, :cond_4

    move v9, v15

    goto :goto_0

    .line 729
    :cond_4
    iget-object v5, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v14

    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v6

    invoke-virtual {v5, v14, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_5

    .line 732
    invoke-interface {v2, v1, v5, v7}, Landroid/icu/text/RbnfLenientScanner;->findText(Ljava/lang/String;Ljava/lang/String;I)[I

    move-result-object v6

    .line 733
    aget v6, v6, v8

    goto :goto_1

    .line 736
    :cond_5
    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    :goto_1
    if-ltz v6, :cond_7

    if-lt v6, v11, :cond_7

    if-eqz v12, :cond_6

    .line 738
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v8

    if-le v14, v8, :cond_7

    .line 741
    :cond_6
    iget-object v8, v0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/icu/text/MessagePattern$Part;->getLimit()I

    move-result v9

    invoke-virtual {v13}, Landroid/icu/text/MessagePattern$Part;->getIndex()I

    move-result v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    move-object v12, v5

    move v11, v6

    move-object v10, v8

    :cond_7
    move v9, v15

    const/4 v8, 0x0

    goto :goto_0

    :cond_8
    if-eqz v10, :cond_9

    .line 745
    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 746
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v11, v0

    invoke-virtual {v3, v11}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v10

    :cond_9
    const/4 v0, -0x1

    .line 751
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 752
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    const/4 v1, 0x0

    return-object v1

    :cond_a
    :goto_2
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 689
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 690
    invoke-virtual {v3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    return-object v1
.end method

.method public setLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    .line 776
    sget-object p1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {p1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 778
    :cond_0
    sget-object v0, Landroid/icu/text/PluralRules$PluralType;->CARDINAL:Landroid/icu/text/PluralRules$PluralType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, p1, v1}, Landroid/icu/text/PluralFormat;->init(Landroid/icu/text/PluralRules;Landroid/icu/text/PluralRules$PluralType;Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)V

    return-void
.end method

.method public setNumberFormat(Landroid/icu/text/NumberFormat;)V
    .locals 0

    .line 788
    iput-object p1, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-void
.end method

.method public toPattern()Ljava/lang/String;
    .locals 0

    .line 419
    iget-object p0, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->ulocale:Landroid/icu/util/ULocale;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", rules=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/icu/text/PluralFormat;->pluralRules:Landroid/icu/text/PluralRules;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", pattern=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/icu/text/PluralFormat;->pattern:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", format=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/icu/text/PluralFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
