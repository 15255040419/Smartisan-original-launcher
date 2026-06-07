.class public final Lh/l;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lh/l$a;
    }
.end annotation


# static fields
.field public static final k:[C

.field public static final l:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lf/m;

.field public c:Ljava/lang/String;

.field public d:Lf/m$a;

.field public final e:Lf/s$a;

.field public f:Lf/n;

.field public final g:Z

.field public h:Lf/o$a;

.field public i:Lf/j$a;

.field public j:Lf/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lh/l;->k:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/l;->l:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lf/m;Ljava/lang/String;Lf/l;Lf/n;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/l;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lh/l;->b:Lf/m;

    .line 4
    iput-object p3, p0, Lh/l;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lf/s$a;

    invoke-direct {p1}, Lf/s$a;-><init>()V

    iput-object p1, p0, Lh/l;->e:Lf/s$a;

    .line 6
    iput-object p5, p0, Lh/l;->f:Lf/n;

    .line 7
    iput-boolean p6, p0, Lh/l;->g:Z

    if-eqz p4, :cond_0

    .line 8
    iget-object p1, p0, Lh/l;->e:Lf/s$a;

    invoke-virtual {p1, p4}, Lf/s$a;->a(Lf/l;)Lf/s$a;

    :cond_0
    if-eqz p7, :cond_1

    .line 9
    new-instance p1, Lf/j$a;

    invoke-direct {p1}, Lf/j$a;-><init>()V

    iput-object p1, p0, Lh/l;->i:Lf/j$a;

    goto :goto_0

    :cond_1
    if-eqz p8, :cond_2

    .line 10
    new-instance p1, Lf/o$a;

    invoke-direct {p1}, Lf/o$a;-><init>()V

    iput-object p1, p0, Lh/l;->h:Lf/o$a;

    .line 11
    iget-object p1, p0, Lh/l;->h:Lf/o$a;

    sget-object p2, Lf/o;->f:Lf/n;

    invoke-virtual {p1, p2}, Lf/o$a;->a(Lf/n;)Lf/o$a;

    :cond_2
    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 6
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    const-string v4, " \"<>^`{}|\\?#"

    .line 7
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 9
    :cond_1
    :goto_1
    new-instance v3, Lg/c;

    invoke-direct {v3}, Lg/c;-><init>()V

    .line 10
    invoke-virtual {v3, p0, v1, v2}, Lg/c;->writeUtf8(Ljava/lang/String;II)Lg/c;

    .line 11
    invoke-static {v3, p0, v2, v0, p1}, Lh/l;->a(Lg/c;Ljava/lang/String;IIZ)V

    .line 12
    invoke-virtual {v3}, Lg/c;->readUtf8()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static a(Lg/c;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 13
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    const-string v2, " \"<>^`{}|\\?#"

    .line 14
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0, v1}, Lg/c;->writeUtf8CodePoint(I)Lg/c;

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 16
    new-instance v0, Lg/c;

    invoke-direct {v0}, Lg/c;-><init>()V

    .line 17
    :cond_3
    invoke-virtual {v0, v1}, Lg/c;->writeUtf8CodePoint(I)Lg/c;

    .line 18
    :goto_2
    invoke-virtual {v0}, Lg/c;->exhausted()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v0}, Lg/c;->readByte()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 20
    invoke-virtual {p0, v3}, Lg/c;->writeByte(I)Lg/c;

    .line 21
    sget-object v4, Lh/l;->k:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lg/c;->writeByte(I)Lg/c;

    .line 22
    sget-object v4, Lh/l;->k:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lg/c;->writeByte(I)Lg/c;

    goto :goto_2

    .line 23
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public a()Lf/s$a;
    .locals 5

    .line 29
    iget-object v0, p0, Lh/l;->d:Lf/m$a;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lf/m$a;->a()Lf/m;

    move-result-object v0

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lh/l;->b:Lf/m;

    iget-object v1, p0, Lh/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lf/m;->b(Ljava/lang/String;)Lf/m;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 32
    :goto_0
    iget-object v1, p0, Lh/l;->j:Lf/t;

    if-nez v1, :cond_3

    .line 33
    iget-object v2, p0, Lh/l;->i:Lf/j$a;

    if-eqz v2, :cond_1

    .line 34
    invoke-virtual {v2}, Lf/j$a;->a()Lf/j;

    move-result-object v1

    goto :goto_1

    .line 35
    :cond_1
    iget-object v2, p0, Lh/l;->h:Lf/o$a;

    if-eqz v2, :cond_2

    .line 36
    invoke-virtual {v2}, Lf/o$a;->a()Lf/o;

    move-result-object v1

    goto :goto_1

    .line 37
    :cond_2
    iget-boolean v2, p0, Lh/l;->g:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-array v2, v2, [B

    .line 38
    invoke-static {v1, v2}, Lf/t;->a(Lf/n;[B)Lf/t;

    move-result-object v1

    .line 39
    :cond_3
    :goto_1
    iget-object v2, p0, Lh/l;->f:Lf/n;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 40
    new-instance v3, Lh/l$a;

    invoke-direct {v3, v1, v2}, Lh/l$a;-><init>(Lf/t;Lf/n;)V

    move-object v1, v3

    goto :goto_2

    .line 41
    :cond_4
    iget-object v3, p0, Lh/l;->e:Lf/s$a;

    invoke-virtual {v2}, Lf/n;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Content-Type"

    invoke-virtual {v3, v4, v2}, Lf/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    .line 42
    :cond_5
    :goto_2
    iget-object v2, p0, Lh/l;->e:Lf/s$a;

    .line 43
    invoke-virtual {v2, v0}, Lf/s$a;->a(Lf/m;)Lf/s$a;

    iget-object v0, p0, Lh/l;->a:Ljava/lang/String;

    .line 44
    invoke-virtual {v2, v0, v1}, Lf/s$a;->a(Ljava/lang/String;Lf/t;)Lf/s$a;

    return-object v2

    .line 45
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed URL. Base: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/l;->b:Lf/m;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lh/l;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lf/l;Lf/t;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lh/l;->h:Lf/o$a;

    invoke-virtual {v0, p1, p2}, Lf/o$a;->a(Lf/l;Lf/t;)Lf/o$a;

    return-void
.end method

.method public a(Lf/o$b;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lh/l;->h:Lf/o$a;

    invoke-virtual {v0, p1}, Lf/o$a;->a(Lf/o$b;)Lf/o$a;

    return-void
.end method

.method public a(Lf/t;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lh/l;->j:Lf/t;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object p1

    iput-object p1, p0, Lh/l;->f:Lf/n;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Malformed content type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 4
    :cond_0
    iget-object v0, p0, Lh/l;->e:Lf/s$a;

    invoke-virtual {v0, p1, p2}, Lf/s$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/s$a;

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    .line 24
    iget-object p3, p0, Lh/l;->i:Lf/j$a;

    invoke-virtual {p3, p1, p2}, Lf/j$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/j$a;

    goto :goto_0

    .line 25
    :cond_0
    iget-object p3, p0, Lh/l;->i:Lf/j$a;

    invoke-virtual {p3, p1, p2}, Lf/j$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/j$a;

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lh/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {p2, p3}, Lh/l;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    .line 3
    iget-object v0, p0, Lh/l;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 4
    sget-object p3, Lh/l;->l:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    .line 5
    iput-object p1, p0, Lh/l;->c:Ljava/lang/String;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lh/l;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lh/l;->b:Lf/m;

    invoke-virtual {v1, v0}, Lf/m;->a(Ljava/lang/String;)Lf/m$a;

    move-result-object v0

    iput-object v0, p0, Lh/l;->d:Lf/m$a;

    .line 3
    iget-object v0, p0, Lh/l;->d:Lf/m$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lh/l;->c:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Malformed URL. Base: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lh/l;->b:Lf/m;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lh/l;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    .line 6
    iget-object p3, p0, Lh/l;->d:Lf/m$a;

    invoke-virtual {p3, p1, p2}, Lf/m$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/m$a;

    goto :goto_1

    .line 7
    :cond_2
    iget-object p3, p0, Lh/l;->d:Lf/m$a;

    invoke-virtual {p3, p1, p2}, Lf/m$a;->b(Ljava/lang/String;Ljava/lang/String;)Lf/m$a;

    :goto_1
    return-void
.end method
