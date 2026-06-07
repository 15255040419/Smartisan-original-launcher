.class public La/m/a/a$c;
.super La/l/h;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/m/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/ViewModelProvider$Factory;


# instance fields
.field public a:La/d/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/d/h<",
            "La/m/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, La/m/a/a$c$a;

    invoke-direct {v0}, La/m/a/a$c$a;-><init>()V

    sput-object v0, La/m/a/a$c;->b:Landroidx/lifecycle/ViewModelProvider$Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/l/h;-><init>()V

    .line 2
    new-instance v0, La/d/h;

    invoke-direct {v0}, La/d/h;-><init>()V

    iput-object v0, p0, La/m/a/a$c;->a:La/d/h;

    return-void
.end method

.method public static a(La/l/i;)La/m/a/a$c;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    sget-object v1, La/m/a/a$c;->b:Landroidx/lifecycle/ViewModelProvider$Factory;

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(La/l/i;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    const-class p0, La/m/a/a$c;

    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->a(Ljava/lang/Class;)La/l/h;

    move-result-object p0

    check-cast p0, La/m/a/a$c;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 2
    invoke-super {p0}, La/l/h;->a()V

    .line 3
    iget-object v0, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v0}, La/d/h;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    iget-object v2, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v2, v1}, La/d/h;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/m/a/a$a;

    const/4 v3, 0x1

    .line 5
    invoke-virtual {v2, v3}, La/m/a/a$a;->a(Z)Landroidx/loader/content/Loader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v0}, La/d/h;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 7
    iget-object v0, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v0}, La/d/h;->c()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v2}, La/d/h;->c()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 11
    iget-object v2, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v2, v1}, La/d/h;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/m/a/a$a;

    .line 12
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v3, v1}, La/d/h;->c(I)I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 13
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, La/m/a/a$a;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, v0, p2, p3, p4}, La/m/a/a$a;->a(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v0}, La/d/h;->c()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, La/m/a/a$c;->a:La/d/h;

    invoke-virtual {v2, v1}, La/d/h;->e(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La/m/a/a$a;

    .line 3
    invoke-virtual {v2}, La/m/a/a$a;->f()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
