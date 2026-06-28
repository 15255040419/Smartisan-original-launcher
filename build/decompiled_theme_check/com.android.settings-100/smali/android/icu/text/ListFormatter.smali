.class public final Landroid/icu/text/ListFormatter;
.super Ljava/lang/Object;
.source "ListFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ListFormatter$Cache;,
        Landroid/icu/text/ListFormatter$FormattedListBuilder;,
        Landroid/icu/text/ListFormatter$Style;
    }
.end annotation


# static fields
.field static cache:Landroid/icu/text/ListFormatter$Cache;


# instance fields
.field private final end:Ljava/lang/String;

.field private final locale:Landroid/icu/util/ULocale;

.field private final middle:Ljava/lang/String;

.field private final start:Ljava/lang/String;

.field private final two:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 327
    new-instance v0, Landroid/icu/text/ListFormatter$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ListFormatter$Cache;-><init>(Landroid/icu/text/ListFormatter$1;)V

    sput-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    invoke-static {p1, v0}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    invoke-static {p2, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 116
    invoke-static {p3, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    invoke-static {p4, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p0

    .line 113
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    .line 123
    iput-object p2, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    .line 124
    iput-object p3, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    .line 125
    iput-object p4, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$1;)V
    .locals 0

    .line 32
    invoke-direct/range {p0 .. p5}, Landroid/icu/text/ListFormatter;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 0

    .line 32
    invoke-static {p0, p1}, Landroid/icu/text/ListFormatter;->compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static compilePattern(Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    .line 130
    invoke-static {p0, p1, v0, v0}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Landroid/icu/text/ListFormatter;
    .locals 1

    .line 175
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ListFormatter;
    .locals 1

    .line 141
    sget-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 166
    sget-object v0, Landroid/icu/text/ListFormatter;->cache:Landroid/icu/text/ListFormatter$Cache;

    invoke-virtual {p1}, Landroid/icu/text/ListFormatter$Style;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/icu/text/ListFormatter$Cache;->get(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/ListFormatter;
    .locals 1

    .line 152
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object p0

    sget-object v0, Landroid/icu/text/ListFormatter$Style;->STANDARD:Landroid/icu/text/ListFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;I)",
            "Landroid/icu/text/ListFormatter$FormattedListBuilder;"
        }
    .end annotation

    .line 205
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 206
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_a

    const/4 v2, 0x1

    if-eq p1, v2, :cond_8

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    .line 215
    new-instance v4, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    if-nez p2, :cond_0

    move v6, v2

    goto :goto_0

    :cond_0
    move v6, v1

    :goto_0
    invoke-direct {v4, v5, v6}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    .line 216
    iget-object v5, p0, Landroid/icu/text/ListFormatter;->start:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne p2, v2, :cond_1

    move v7, v2

    goto :goto_1

    :cond_1
    move v7, v1

    :goto_1
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    :goto_2
    add-int/lit8 v5, p1, -0x1

    if-ge v3, v5, :cond_3

    .line 218
    iget-object v5, p0, Landroid/icu/text/ListFormatter;->middle:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    if-ne p2, v3, :cond_2

    move v7, v2

    goto :goto_3

    :cond_2
    move v7, v1

    :goto_3
    invoke-virtual {v4, v5, v6, v7}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 220
    :cond_3
    iget-object p0, p0, Landroid/icu/text/ListFormatter;->end:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-ne p2, v5, :cond_4

    move v1, v2

    :cond_4
    invoke-virtual {v4, p0, p1, v1}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p0

    return-object p0

    .line 213
    :cond_5
    new-instance p1, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez p2, :cond_6

    move v4, v2

    goto :goto_4

    :cond_6
    move v4, v1

    :goto_4
    invoke-direct {p1, v3, v4}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    iget-object p0, p0, Landroid/icu/text/ListFormatter;->two:Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v2, :cond_7

    move v1, v2

    :cond_7
    invoke-virtual {p1, p0, v0, v1}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->append(Ljava/lang/String;Ljava/lang/Object;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p0

    return-object p0

    .line 211
    :cond_8
    new-instance p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    if-nez p2, :cond_9

    move v1, v2

    :cond_9
    invoke-direct {p0, p1, v1}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p0

    .line 209
    :cond_a
    new-instance p0, Landroid/icu/text/ListFormatter$FormattedListBuilder;

    const-string p1, ""

    invoke-direct {p0, p1, v1}, Landroid/icu/text/ListFormatter$FormattedListBuilder;-><init>(Ljava/lang/Object;Z)V

    return-object p0
.end method

.method public format(Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, -0x1

    .line 197
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs format([Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 186
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Landroid/icu/util/ULocale;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iget-object p0, p0, Landroid/icu/text/ListFormatter;->locale:Landroid/icu/util/ULocale;

    return-object p0
.end method

.method public getPatternForNumItems(I)Ljava/lang/String;
    .locals 5

    if-lez p1, :cond_1

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 236
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string/jumbo v4, "{%d}"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    :cond_0
    invoke-virtual {p0, v0}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "count must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
