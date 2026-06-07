.class public Lb/a/a/c1/c;
.super Ljava/lang/Object;
.source "LOG.java"


# static fields
.field public static d:Z = false

.field public static e:Z = false

.field public static f:Z = false


# instance fields
.field public a:Ljava/lang/Class;

.field public b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/a/c1/c;->a:Ljava/lang/Class;

    .line 3
    iput-object v0, p0, Lb/a/a/c1/c;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lb/a/a/c1/c;->c:Z

    if-eqz p1, :cond_0

    .line 5
    iput-object p1, p0, Lb/a/a/c1/c;->a:Ljava/lang/Class;

    .line 6
    iget-object p1, p0, Lb/a/a/c1/c;->a:Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lb/a/a/c1/c;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/c1/c;->b:Ljava/lang/String;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "LOG must be init by class object"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a()Ljava/util/ArrayList;
    .locals 4

    .line 3
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    array-length v1, v0

    const/4 v2, 0x4

    if-le v1, v2, :cond_0

    .line 5
    aget-object v1, v0, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "."

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 7
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    .line 8
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return-object v2
.end method

.method public static b(Ljava/lang/Class;)Lb/a/a/c1/c;
    .locals 1

    .line 1
    new-instance v0, Lb/a/a/c1/c;

    invoke-direct {v0, p0}, Lb/a/a/c1/c;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PullDown"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    invoke-static {}, Lb/a/a/c1/c;->a()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x0

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, "->"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v2, " : "

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x2

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " "

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "."

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lb/a/a/c1/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lb/a/a/c1/c;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    sget-boolean v0, Lb/a/a/c1/c;->d:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lb/a/a/c1/c;->c:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/a/c1/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/a/a/c1/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1

    .line 5
    :cond_2
    :goto_0
    invoke-static {p1}, Lb/a/a/c1/c;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
