.class public final Landroid/icu/text/SimpleFormatter;
.super Ljava/lang/Object;
.source "SimpleFormatter.java"


# instance fields
.field private final compiledPattern:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    return-void
.end method

.method public static compile(Ljava/lang/CharSequence;)Landroid/icu/text/SimpleFormatter;
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    .line 62
    invoke-static {p0, v0, v1}, Landroid/icu/text/SimpleFormatter;->compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;

    move-result-object p0

    return-object p0
.end method

.method public static compileMinMaxArguments(Ljava/lang/CharSequence;II)Landroid/icu/text/SimpleFormatter;
    .locals 1

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    invoke-static {p0, v0, p1, p2}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object p0

    .line 79
    new-instance p1, Landroid/icu/text/SimpleFormatter;

    invoke-direct {p1, p0}, Landroid/icu/text/SimpleFormatter;-><init>(Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public varargs format([Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/icu/impl/SimpleFormatterImpl;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public varargs formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    .line 112
    iget-object p0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public varargs formatAndReplace(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 0

    .line 132
    iget-object p0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Landroid/icu/impl/SimpleFormatterImpl;->formatAndReplace(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public getArgumentLimit()I
    .locals 0

    .line 86
    iget-object p0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getArgumentLimit(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTextWithNoArguments()Ljava/lang/String;
    .locals 0

    .line 152
    iget-object p0, p0, Landroid/icu/text/SimpleFormatter;->compiledPattern:Ljava/lang/String;

    invoke-static {p0}, Landroid/icu/impl/SimpleFormatterImpl;->getTextWithNoArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 140
    invoke-virtual {p0}, Landroid/icu/text/SimpleFormatter;->getArgumentLimit()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "{"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Landroid/icu/text/SimpleFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
