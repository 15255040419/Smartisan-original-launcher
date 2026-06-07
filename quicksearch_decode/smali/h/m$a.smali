.class public final Lh/m$a;
.super Ljava/lang/Object;
.source "RequestFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final w:Ljava/util/regex/Pattern;

.field public static final x:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Lh/o;

.field public final b:Ljava/lang/reflect/Method;

.field public final c:[Ljava/lang/annotation/Annotation;

.field public final d:[[Ljava/lang/annotation/Annotation;

.field public final e:[Ljava/lang/reflect/Type;

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Ljava/lang/String;

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Ljava/lang/String;

.field public s:Lf/l;

.field public t:Lf/n;

.field public u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public v:[Lh/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lh/j<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\{([a-zA-Z][a-zA-Z0-9_-]*)\\}"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/m$a;->w:Ljava/util/regex/Pattern;

    const-string v0, "[a-zA-Z][a-zA-Z0-9_-]*"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lh/m$a;->x:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lh/o;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lh/m$a;->a:Lh/o;

    .line 3
    iput-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    .line 4
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p1

    iput-object p1, p0, Lh/m$a;->e:[Ljava/lang/reflect/Type;

    .line 6
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object p1

    iput-object p1, p0, Lh/m$a;->d:[[Ljava/lang/annotation/Annotation;

    return-void
.end method

.method public static a(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 324
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_0

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 325
    :cond_0
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_1

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 326
    :cond_1
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_2

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 327
    :cond_2
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_3

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 328
    :cond_3
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_4

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 329
    :cond_4
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_5

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 330
    :cond_5
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_6

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 331
    :cond_6
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne v0, p0, :cond_7

    const-class p0, Ljava/lang/Short;

    :cond_7
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    sget-object v0, Lh/m$a;->w:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 321
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 322
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lf/l;
    .locals 8

    .line 57
    new-instance v0, Lf/l$a;

    invoke-direct {v0}, Lf/l$a;-><init>()V

    .line 58
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    const/16 v5, 0x3a

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-eq v5, v6, :cond_1

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v7

    if-eq v5, v6, :cond_1

    .line 61
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Content-Type"

    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    :try_start_0
    invoke-static {v4}, Lf/n;->a(Ljava/lang/String;)Lf/n;

    move-result-object v5

    iput-object v5, p0, Lh/m$a;->t:Lf/n;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 65
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v7, [Ljava/lang/Object;

    aput-object v4, v1, v2

    const-string v2, "Malformed content type: %s"

    invoke-static {v0, p1, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 66
    :cond_0
    invoke-virtual {v0, v6, v4}, Lf/l$a;->a(Ljava/lang/String;Ljava/lang/String;)Lf/l$a;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    :cond_1
    iget-object p1, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v4, v0, v2

    const-string v1, "@Headers value must be in the form \"Name: Value\". Found: \"%s\""

    invoke-static {p1, v1, v0}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 68
    :cond_2
    invoke-virtual {v0}, Lf/l$a;->a()Lf/l;

    move-result-object p1

    return-object p1
.end method

.method public final a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lh/j;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lh/j<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    .line 69
    array-length v2, p3

    move-object v3, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, p3, v1

    .line 70
    invoke-virtual {p0, p1, p2, p3, v4}, Lh/m$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lh/j;

    move-result-object v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    if-nez v3, :cond_1

    move-object v3, v4

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "Multiple Retrofit annotations found, only one allowed."

    invoke-static {p2, p1, v0, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_2
    move-object v1, v3

    :cond_3
    if-eqz v1, :cond_4

    return-object v1

    .line 72
    :cond_4
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v0, [Ljava/lang/Object;

    const-string v0, "No Retrofit annotation found."

    invoke-static {p2, p1, v0, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Ljava/lang/annotation/Annotation;)Lh/j;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lh/j<",
            "*>;"
        }
    .end annotation

    .line 73
    const-class v0, Lf/o$b;

    instance-of v1, p4, Lh/s/p;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 74
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 75
    iget-boolean v0, p0, Lh/m$a;->j:Z

    if-nez v0, :cond_4

    .line 76
    iget-boolean v0, p0, Lh/m$a;->k:Z

    if-nez v0, :cond_3

    .line 77
    iget-boolean v0, p0, Lh/m$a;->l:Z

    if-nez v0, :cond_2

    .line 78
    iget-boolean v0, p0, Lh/m$a;->m:Z

    if-nez v0, :cond_1

    .line 79
    iget-object v0, p0, Lh/m$a;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 80
    iput-boolean v2, p0, Lh/m$a;->i:Z

    .line 81
    check-cast p4, Lh/s/p;

    .line 82
    invoke-interface {p4}, Lh/s/p;->value()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p0, p1, v0}, Lh/m$a;->a(ILjava/lang/String;)V

    .line 84
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    invoke-virtual {p1, p2, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 85
    new-instance p2, Lh/j$i;

    invoke-interface {p4}, Lh/s/p;->encoded()Z

    move-result p3

    invoke-direct {p2, v0, p1, p3}, Lh/j$i;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 86
    :cond_0
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lh/m$a;->n:Ljava/lang/String;

    aput-object p4, p3, v3

    const-string p4, "@Path can only be used with relative url on @%s"

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 87
    :cond_1
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Path parameters may not be used with @Url."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 88
    :cond_2
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryMap."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 89
    :cond_3
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @QueryName."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 90
    :cond_4
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "A @Path parameter must not come after a @Query."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 91
    :cond_5
    instance-of v1, p4, Lh/s/q;

    const-string v4, "<String>)"

    const-string v5, " must include generic type (e.g., "

    if-eqz v1, :cond_9

    .line 92
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 93
    check-cast p4, Lh/s/q;

    .line 94
    invoke-interface {p4}, Lh/s/q;->value()Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-interface {p4}, Lh/s/q;->encoded()Z

    move-result p4

    .line 96
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 97
    iput-boolean v2, p0, Lh/m$a;->j:Z

    .line 98
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 99
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_6

    .line 100
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 101
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 102
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 103
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 104
    new-instance p2, Lh/j$j;

    invoke-direct {p2, v0, p1, p4}, Lh/j$j;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 105
    :cond_6
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 107
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 108
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 109
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lh/m$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 111
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 112
    new-instance p2, Lh/j$j;

    invoke-direct {p2, v0, p1, p4}, Lh/j$j;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 113
    :cond_8
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    .line 114
    invoke-virtual {p1, p2, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 115
    new-instance p2, Lh/j$j;

    invoke-direct {p2, v0, p1, p4}, Lh/j$j;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 116
    :cond_9
    instance-of v1, p4, Lh/s/s;

    if-eqz v1, :cond_d

    .line 117
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 118
    check-cast p4, Lh/s/s;

    .line 119
    invoke-interface {p4}, Lh/s/s;->encoded()Z

    move-result p4

    .line 120
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 121
    iput-boolean v2, p0, Lh/m$a;->k:Z

    .line 122
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 123
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_a

    .line 124
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 125
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 126
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 127
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 128
    new-instance p2, Lh/j$l;

    invoke-direct {p2, p1, p4}, Lh/j$l;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 129
    :cond_a
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 131
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 132
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 133
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lh/m$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 134
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 135
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 136
    new-instance p2, Lh/j$l;

    invoke-direct {p2, p1, p4}, Lh/j$l;-><init>(Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 137
    :cond_c
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    .line 138
    invoke-virtual {p1, p2, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 139
    new-instance p2, Lh/j$l;

    invoke-direct {p2, p1, p4}, Lh/j$l;-><init>(Lretrofit2/Converter;Z)V

    return-object p2

    .line 140
    :cond_d
    instance-of v1, p4, Lh/s/r;

    const-string v6, "Map must include generic types (e.g., Map<String, String>)"

    if-eqz v1, :cond_11

    .line 141
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 142
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 143
    iput-boolean v2, p0, Lh/m$a;->l:Z

    .line 144
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 145
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lh/q;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 146
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_f

    .line 147
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 148
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 149
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_e

    .line 150
    invoke-static {v2, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 151
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 152
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 153
    new-instance p2, Lh/j$k;

    check-cast p4, Lh/s/r;

    invoke-interface {p4}, Lh/s/r;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lh/j$k;-><init>(Lretrofit2/Converter;Z)V

    return-object p2

    .line 154
    :cond_e
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@QueryMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 155
    :cond_f
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 156
    :cond_10
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@QueryMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 157
    :cond_11
    instance-of v1, p4, Lh/s/h;

    if-eqz v1, :cond_15

    .line 158
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 159
    check-cast p4, Lh/s/h;

    .line 160
    invoke-interface {p4}, Lh/s/h;->value()Ljava/lang/String;

    move-result-object p4

    .line 161
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 162
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 163
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_12

    .line 164
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 165
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 166
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 167
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 168
    new-instance p2, Lh/j$f;

    invoke-direct {p2, p4, p1}, Lh/j$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 169
    :cond_12
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 171
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 172
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 173
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lh/m$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 174
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 175
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 176
    new-instance p2, Lh/j$f;

    invoke-direct {p2, p4, p1}, Lh/j$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 177
    :cond_14
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    .line 178
    invoke-virtual {p1, p2, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 179
    new-instance p2, Lh/j$f;

    invoke-direct {p2, p4, p1}, Lh/j$f;-><init>(Ljava/lang/String;Lretrofit2/Converter;)V

    return-object p2

    .line 180
    :cond_15
    instance-of v1, p4, Lh/s/c;

    if-eqz v1, :cond_1a

    .line 181
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 182
    iget-boolean v0, p0, Lh/m$a;->p:Z

    if-eqz v0, :cond_19

    .line 183
    check-cast p4, Lh/s/c;

    .line 184
    invoke-interface {p4}, Lh/s/c;->value()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-interface {p4}, Lh/s/c;->encoded()Z

    move-result p4

    .line 186
    iput-boolean v2, p0, Lh/m$a;->f:Z

    .line 187
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 188
    const-class v2, Ljava/lang/Iterable;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 189
    instance-of v2, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_16

    .line 190
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 191
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 192
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 193
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 194
    new-instance p2, Lh/j$d;

    invoke-direct {p2, v0, p1, p4}, Lh/j$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 195
    :cond_16
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 197
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 198
    :cond_17
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 199
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lh/m$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    .line 200
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 201
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 202
    new-instance p2, Lh/j$d;

    invoke-direct {p2, v0, p1, p4}, Lh/j$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    invoke-virtual {p2}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 203
    :cond_18
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    .line 204
    invoke-virtual {p1, p2, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 205
    new-instance p2, Lh/j$d;

    invoke-direct {p2, v0, p1, p4}, Lh/j$d;-><init>(Ljava/lang/String;Lretrofit2/Converter;Z)V

    return-object p2

    .line 206
    :cond_19
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Field parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 207
    :cond_1a
    instance-of v1, p4, Lh/s/d;

    if-eqz v1, :cond_1f

    .line 208
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 209
    iget-boolean v0, p0, Lh/m$a;->p:Z

    if-eqz v0, :cond_1e

    .line 210
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    .line 211
    const-class v1, Ljava/util/Map;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 212
    const-class v1, Ljava/util/Map;

    invoke-static {p2, v0, v1}, Lh/q;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 213
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1c

    .line 214
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 215
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 216
    const-class v1, Ljava/lang/String;

    if-ne v1, v0, :cond_1b

    .line 217
    invoke-static {v2, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 218
    iget-object p2, p0, Lh/m$a;->a:Lh/o;

    .line 219
    invoke-virtual {p2, p1, p3}, Lh/o;->c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 220
    iput-boolean v2, p0, Lh/m$a;->f:Z

    .line 221
    new-instance p2, Lh/j$e;

    check-cast p4, Lh/s/d;

    invoke-interface {p4}, Lh/s/d;->encoded()Z

    move-result p3

    invoke-direct {p2, p1, p3}, Lh/j$e;-><init>(Lretrofit2/Converter;Z)V

    return-object p2

    .line 222
    :cond_1b
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@FieldMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 223
    :cond_1c
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 224
    :cond_1d
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 225
    :cond_1e
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@FieldMap parameters can only be used with form encoding."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 226
    :cond_1f
    instance-of v1, p4, Lh/s/n;

    if-eqz v1, :cond_2e

    .line 227
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 228
    iget-boolean v1, p0, Lh/m$a;->q:Z

    if-eqz v1, :cond_2d

    .line 229
    check-cast p4, Lh/s/n;

    .line 230
    iput-boolean v2, p0, Lh/m$a;->g:Z

    .line 231
    invoke-interface {p4}, Lh/s/n;->value()Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v6

    .line 233
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_26

    .line 234
    const-class p3, Ljava/lang/Iterable;

    invoke-virtual {p3, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    const-string p4, "@Part annotation must supply a name or use MultipartBody.Part parameter type."

    if-eqz p3, :cond_22

    .line 235
    instance-of p3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz p3, :cond_21

    .line 236
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 237
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 238
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_20

    .line 239
    sget-object p1, Lh/j$m;->a:Lh/j$m;

    invoke-virtual {p1}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 240
    :cond_20
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 241
    :cond_21
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 243
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 244
    :cond_22
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result p2

    if-eqz p2, :cond_24

    .line 245
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 246
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_23

    .line 247
    sget-object p1, Lh/j$m;->a:Lh/j$m;

    invoke-virtual {p1}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 248
    :cond_23
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 249
    :cond_24
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_25

    .line 250
    sget-object p1, Lh/j$m;->a:Lh/j$m;

    return-object p1

    .line 251
    :cond_25
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_26
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const-string v8, "Content-Disposition"

    aput-object v8, v7, v3

    .line 252
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "form-data; name=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v2

    const/4 v1, 0x2

    const-string v2, "Content-Transfer-Encoding"

    aput-object v2, v7, v1

    const/4 v1, 0x3

    .line 253
    invoke-interface {p4}, Lh/s/n;->encoding()Ljava/lang/String;

    move-result-object p4

    aput-object p4, v7, v1

    .line 254
    invoke-static {v7}, Lf/l;->a([Ljava/lang/String;)Lf/l;

    move-result-object p4

    .line 255
    const-class v1, Ljava/lang/Iterable;

    invoke-virtual {v1, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    const-string v2, "@Part parameters using the MultipartBody.Part must not include a part name in the annotation."

    if-eqz v1, :cond_29

    .line 256
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_28

    .line 257
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 258
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 259
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 260
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    .line 261
    invoke-virtual {p1, p2, p3, v0}, Lh/o;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 262
    new-instance p2, Lh/j$g;

    invoke-direct {p2, p4, p1}, Lh/j$g;-><init>(Lf/l;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lh/j;->b()Lh/j;

    move-result-object p1

    return-object p1

    .line 263
    :cond_27
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 264
    :cond_28
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    .line 266
    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 267
    :cond_29
    invoke-virtual {v6}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 268
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lh/m$a;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 269
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 270
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    .line 271
    invoke-virtual {p1, p2, p3, v0}, Lh/o;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 272
    new-instance p2, Lh/j$g;

    invoke-direct {p2, p4, p1}, Lh/j$g;-><init>(Lf/l;Lretrofit2/Converter;)V

    invoke-virtual {p2}, Lh/j;->a()Lh/j;

    move-result-object p1

    return-object p1

    .line 273
    :cond_2a
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 274
    :cond_2b
    invoke-virtual {v0, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 275
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    .line 276
    invoke-virtual {p1, p2, p3, v0}, Lh/o;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 277
    new-instance p2, Lh/j$g;

    invoke-direct {p2, p4, p1}, Lh/j$g;-><init>(Lf/l;Lretrofit2/Converter;)V

    return-object p2

    .line 278
    :cond_2c
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v2, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 279
    :cond_2d
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Part parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 280
    :cond_2e
    instance-of v1, p4, Lh/s/o;

    if-eqz v1, :cond_34

    .line 281
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 282
    iget-boolean v1, p0, Lh/m$a;->q:Z

    if-eqz v1, :cond_33

    .line 283
    iput-boolean v2, p0, Lh/m$a;->g:Z

    .line 284
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    .line 285
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 286
    const-class v4, Ljava/util/Map;

    invoke-static {p2, v1, v4}, Lh/q;->b(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 287
    instance-of v1, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_31

    .line 288
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 289
    invoke-static {v3, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 290
    const-class v4, Ljava/lang/String;

    if-ne v4, v1, :cond_30

    .line 291
    invoke-static {v2, p2}, Lh/q;->a(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 292
    invoke-static {p2}, Lh/q;->c(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 293
    iget-object p1, p0, Lh/m$a;->a:Lh/o;

    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    .line 294
    invoke-virtual {p1, p2, p3, v0}, Lh/o;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1

    .line 295
    check-cast p4, Lh/s/o;

    .line 296
    new-instance p2, Lh/j$h;

    invoke-interface {p4}, Lh/s/o;->encoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lh/j$h;-><init>(Lretrofit2/Converter;Ljava/lang/String;)V

    return-object p2

    .line 297
    :cond_2f
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap values cannot be MultipartBody.Part. Use @Part List<Part> or a different value type instead."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 298
    :cond_30
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "@PartMap keys must be of type String: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array p4, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, p3, p4}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 299
    :cond_31
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    invoke-static {p2, p1, v6, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 300
    :cond_32
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameter type must be Map."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 301
    :cond_33
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@PartMap parameters can only be used with multipart encoding."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 302
    :cond_34
    instance-of p4, p4, Lh/s/a;

    if-eqz p4, :cond_37

    .line 303
    invoke-virtual {p0, p1, p2}, Lh/m$a;->a(ILjava/lang/reflect/Type;)V

    .line 304
    iget-boolean p4, p0, Lh/m$a;->p:Z

    if-nez p4, :cond_36

    iget-boolean p4, p0, Lh/m$a;->q:Z

    if-nez p4, :cond_36

    .line 305
    iget-boolean p4, p0, Lh/m$a;->h:Z

    if-nez p4, :cond_35

    .line 306
    :try_start_0
    iget-object p4, p0, Lh/m$a;->a:Lh/o;

    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    invoke-virtual {p4, p2, p3, v0}, Lh/o;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;)Lretrofit2/Converter;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 307
    iput-boolean v2, p0, Lh/m$a;->h:Z

    .line 308
    new-instance p2, Lh/j$c;

    invoke-direct {p2, p1}, Lh/j$c;-><init>(Lretrofit2/Converter;)V

    return-object p2

    :catch_0
    move-exception p3

    .line 309
    iget-object p4, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v3

    const-string p2, "Unable to create @Body converter for %s"

    invoke-static {p4, p3, p1, p2, v0}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/Throwable;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 310
    :cond_35
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "Multiple @Body method annotations found."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 311
    :cond_36
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v3, [Ljava/lang/Object;

    const-string p4, "@Body parameters cannot be used with form or multi-part encoding."

    invoke-static {p2, p1, p4, p3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_37
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lh/m;
    .locals 6

    .line 1
    iget-object v0, p0, Lh/m$a;->c:[Ljava/lang/annotation/Annotation;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {p0, v4}, Lh/m$a;->a(Ljava/lang/annotation/Annotation;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lh/m$a;->n:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 4
    iget-boolean v0, p0, Lh/m$a;->o:Z

    if-nez v0, :cond_3

    .line 5
    iget-boolean v0, p0, Lh/m$a;->q:Z

    if-nez v0, :cond_2

    .line 6
    iget-boolean v0, p0, Lh/m$a;->p:Z

    if-nez v0, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "FormUrlEncoded can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 8
    :cond_2
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart can only be specified on HTTP methods with request body (e.g., @POST)."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 9
    :cond_3
    :goto_1
    iget-object v0, p0, Lh/m$a;->d:[[Ljava/lang/annotation/Annotation;

    array-length v0, v0

    .line 10
    new-array v1, v0, [Lh/j;

    iput-object v1, p0, Lh/m$a;->v:[Lh/j;

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_4

    .line 11
    iget-object v3, p0, Lh/m$a;->v:[Lh/j;

    iget-object v4, p0, Lh/m$a;->e:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    iget-object v5, p0, Lh/m$a;->d:[[Ljava/lang/annotation/Annotation;

    aget-object v5, v5, v1

    invoke-virtual {p0, v1, v4, v5}, Lh/m$a;->a(ILjava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lh/j;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12
    :cond_4
    iget-object v0, p0, Lh/m$a;->r:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lh/m$a;->m:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 13
    :cond_5
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lh/m$a;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Missing either @%s URL or @Url parameter."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 14
    :cond_6
    :goto_3
    iget-boolean v0, p0, Lh/m$a;->p:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lh/m$a;->q:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lh/m$a;->o:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lh/m$a;->h:Z

    if-nez v0, :cond_7

    goto :goto_4

    .line 15
    :cond_7
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Non-body HTTP method cannot contain @Body."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 16
    :cond_8
    :goto_4
    iget-boolean v0, p0, Lh/m$a;->p:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lh/m$a;->f:Z

    if-eqz v0, :cond_9

    goto :goto_5

    .line 17
    :cond_9
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Form-encoded method must contain at least one @Field."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 18
    :cond_a
    :goto_5
    iget-boolean v0, p0, Lh/m$a;->q:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lh/m$a;->g:Z

    if-eqz v0, :cond_b

    goto :goto_6

    .line 19
    :cond_b
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Multipart method must contain at least one @Part."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0

    .line 20
    :cond_c
    :goto_6
    new-instance v0, Lh/m;

    invoke-direct {v0, p0}, Lh/m;-><init>(Lh/m$a;)V

    return-object v0

    .line 21
    :cond_d
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "HTTP method annotation is required (e.g., @GET, @POST, etc.)."

    invoke-static {v0, v2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public final a(ILjava/lang/String;)V
    .locals 5

    .line 314
    sget-object v0, Lh/m$a;->x:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_1

    .line 315
    iget-object v0, p0, Lh/m$a;->u:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lh/m$a;->r:Ljava/lang/String;

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    const-string p2, "URL \"%s\" does not contain \"{%s}\"."

    invoke-static {v0, p1, p2, v3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 317
    :cond_1
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v4, Lh/m$a;->w:Ljava/util/regex/Pattern;

    .line 318
    invoke-virtual {v4}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    aput-object p2, v3, v1

    const-string p2, "@Path parameter name must match %s. Found: %s"

    .line 319
    invoke-static {v0, p1, p2, v3}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(ILjava/lang/reflect/Type;)V
    .locals 3

    .line 312
    invoke-static {p2}, Lh/q;->d(Ljava/lang/reflect/Type;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 313
    :cond_0
    iget-object v0, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string p2, "Parameter type must not include a type variable or wildcard: %s"

    invoke-static {v0, p1, p2, v1}, Lh/q;->a(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .line 44
    iget-object v0, p0, Lh/m$a;->n:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 45
    iput-object p1, p0, Lh/m$a;->n:Ljava/lang/String;

    .line 46
    iput-boolean p3, p0, Lh/m$a;->o:Z

    .line 47
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0x3f

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    sub-int/2addr p3, v2

    if-ge p1, p3, :cond_2

    add-int/2addr p1, v2

    .line 50
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 51
    sget-object p3, Lh/m$a;->w:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    .line 52
    invoke-virtual {p3}, Ljava/util/regex/Matcher;->find()Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array p3, v2, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "URL query string \"%s\" must not have replace block. For dynamic query parameters use @Query."

    invoke-static {p2, p1, p3}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    .line 54
    :cond_2
    :goto_0
    iput-object p2, p0, Lh/m$a;->r:Ljava/lang/String;

    .line 55
    invoke-static {p2}, Lh/m$a;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lh/m$a;->u:Ljava/util/Set;

    return-void

    .line 56
    :cond_3
    iget-object p2, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v1

    aput-object p1, p3, v2

    const-string p1, "Only one HTTP method is allowed. Found: %s and %s."

    invoke-static {p2, p1, p3}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method

.method public final a(Ljava/lang/annotation/Annotation;)V
    .locals 3

    .line 22
    instance-of v0, p1, Lh/s/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 23
    check-cast p1, Lh/s/b;

    invoke-interface {p1}, Lh/s/b;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1, v1}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 24
    :cond_0
    instance-of v0, p1, Lh/s/e;

    if-eqz v0, :cond_1

    .line 25
    check-cast p1, Lh/s/e;

    invoke-interface {p1}, Lh/s/e;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 26
    :cond_1
    instance-of v0, p1, Lh/s/f;

    if-eqz v0, :cond_2

    .line 27
    check-cast p1, Lh/s/f;

    invoke-interface {p1}, Lh/s/f;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HEAD"

    invoke-virtual {p0, v0, p1, v1}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Lh/s/k;

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Lh/s/k;

    invoke-interface {p1}, Lh/s/k;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1, v2}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 30
    :cond_3
    instance-of v0, p1, Lh/s/l;

    if-eqz v0, :cond_4

    .line 31
    check-cast p1, Lh/s/l;

    invoke-interface {p1}, Lh/s/l;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "POST"

    invoke-virtual {p0, v0, p1, v2}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 32
    :cond_4
    instance-of v0, p1, Lh/s/m;

    if-eqz v0, :cond_5

    .line 33
    check-cast p1, Lh/s/m;

    invoke-interface {p1}, Lh/s/m;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1, v2}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 34
    :cond_5
    instance-of v0, p1, Lh/s/j;

    if-eqz v0, :cond_6

    .line 35
    check-cast p1, Lh/s/j;

    invoke-interface {p1}, Lh/s/j;->value()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPTIONS"

    invoke-virtual {p0, v0, p1, v1}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 36
    :cond_6
    instance-of v0, p1, Lh/s/g;

    if-eqz v0, :cond_7

    .line 37
    check-cast p1, Lh/s/g;

    .line 38
    invoke-interface {p1}, Lh/s/g;->method()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lh/s/g;->path()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lh/s/g;->hasBody()Z

    move-result p1

    invoke-virtual {p0, v0, v1, p1}, Lh/m$a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 39
    :cond_7
    instance-of v0, p1, Lh/s/i;

    if-eqz v0, :cond_9

    .line 40
    check-cast p1, Lh/s/i;

    invoke-interface {p1}, Lh/s/i;->value()[Ljava/lang/String;

    move-result-object p1

    .line 41
    array-length v0, p1

    if-eqz v0, :cond_8

    .line 42
    invoke-virtual {p0, p1}, Lh/m$a;->a([Ljava/lang/String;)Lf/l;

    move-result-object p1

    iput-object p1, p0, Lh/m$a;->s:Lf/l;

    goto :goto_0

    .line 43
    :cond_8
    iget-object p1, p0, Lh/m$a;->b:Ljava/lang/reflect/Method;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "@Headers annotation is empty."

    invoke-static {p1, v1, v0}, Lh/q;->a(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :cond_9
    :goto_0
    return-void
.end method
