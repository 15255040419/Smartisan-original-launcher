.class public final Lb/c/b/c;
.super Ljava/lang/Object;
.source "Gson.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/c$f;
    }
.end annotation


# static fields
.field public static final k:Lb/c/b/p/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/c/b/p/a<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Lb/c/b/p/a<",
            "*>;",
            "Lb/c/b/c$f<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lb/c/b/p/a<",
            "*>;",
            "Lb/c/b/m<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final c:Lb/c/b/o/c;

.field public final d:Lb/c/b/o/m/d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field public final j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-static {v0}, Lb/c/b/p/a;->a(Ljava/lang/Class;)Lb/c/b/p/a;

    move-result-object v0

    sput-object v0, Lb/c/b/c;->k:Lb/c/b/p/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Lb/c/b/o/d;->g:Lb/c/b/o/d;

    sget-object v2, Lb/c/b/b;->a:Lb/c/b/b;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    sget-object v11, Lb/c/b/l;->a:Lb/c/b/l;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v16

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x2

    .line 5
    invoke-direct/range {v0 .. v17}, Lb/c/b/c;-><init>(Lb/c/b/o/d;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLb/c/b/l;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lb/c/b/o/d;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLb/c/b/l;Ljava/lang/String;IILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/o/d;",
            "Lcom/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator<",
            "*>;>;ZZZZZZZ",
            "Lb/c/b/l;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p10

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v3, Ljava/lang/ThreadLocal;

    invoke-direct {v3}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v3, v0, Lb/c/b/c;->a:Ljava/lang/ThreadLocal;

    .line 8
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, v0, Lb/c/b/c;->b:Ljava/util/Map;

    .line 9
    new-instance v3, Lb/c/b/o/c;

    move-object v4, p3

    invoke-direct {v3, p3}, Lb/c/b/o/c;-><init>(Ljava/util/Map;)V

    iput-object v3, v0, Lb/c/b/c;->c:Lb/c/b/o/c;

    move v3, p4

    .line 10
    iput-boolean v3, v0, Lb/c/b/c;->f:Z

    move v3, p6

    .line 11
    iput-boolean v3, v0, Lb/c/b/c;->g:Z

    move v3, p7

    .line 12
    iput-boolean v3, v0, Lb/c/b/c;->h:Z

    move/from16 v3, p8

    .line 13
    iput-boolean v3, v0, Lb/c/b/c;->i:Z

    move/from16 v3, p9

    .line 14
    iput-boolean v3, v0, Lb/c/b/c;->j:Z

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget-object v4, Lb/c/b/o/m/n;->Y:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v4, Lb/c/b/o/m/h;->b:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v4, p17

    .line 19
    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 20
    sget-object v4, Lb/c/b/o/m/n;->D:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v4, Lb/c/b/o/m/n;->m:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v4, Lb/c/b/o/m/n;->g:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    sget-object v4, Lb/c/b/o/m/n;->i:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v4, Lb/c/b/o/m/n;->k:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    invoke-static/range {p11 .. p11}, Lb/c/b/c;->a(Lb/c/b/l;)Lb/c/b/m;

    move-result-object v4

    .line 26
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Long;

    invoke-static {v5, v6, v4}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Double;

    .line 28
    invoke-virtual {p0, v2}, Lb/c/b/c;->a(Z)Lb/c/b/m;

    move-result-object v7

    .line 29
    invoke-static {v5, v6, v7}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v6, Ljava/lang/Float;

    .line 31
    invoke-virtual {p0, v2}, Lb/c/b/c;->b(Z)Lb/c/b/m;

    move-result-object v2

    .line 32
    invoke-static {v5, v6, v2}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v2, Lb/c/b/o/m/n;->x:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v2, Lb/c/b/o/m/n;->o:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v2, Lb/c/b/o/m/n;->q:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    const-class v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4}, Lb/c/b/c;->a(Lb/c/b/m;)Lb/c/b/m;

    move-result-object v5

    invoke-static {v2, v5}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    const-class v2, Ljava/util/concurrent/atomic/AtomicLongArray;

    invoke-static {v4}, Lb/c/b/c;->b(Lb/c/b/m;)Lb/c/b/m;

    move-result-object v4

    invoke-static {v2, v4}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v2, Lb/c/b/o/m/n;->s:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v2, Lb/c/b/o/m/n;->z:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v2, Lb/c/b/o/m/n;->F:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v2, Lb/c/b/o/m/n;->H:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    const-class v2, Ljava/math/BigDecimal;

    sget-object v4, Lb/c/b/o/m/n;->B:Lb/c/b/m;

    invoke-static {v2, v4}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    const-class v2, Ljava/math/BigInteger;

    sget-object v4, Lb/c/b/o/m/n;->C:Lb/c/b/m;

    invoke-static {v2, v4}, Lb/c/b/o/m/n;->a(Ljava/lang/Class;Lb/c/b/m;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v2, Lb/c/b/o/m/n;->J:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v2, Lb/c/b/o/m/n;->L:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v2, Lb/c/b/o/m/n;->P:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lb/c/b/o/m/n;->R:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v2, Lb/c/b/o/m/n;->W:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v2, Lb/c/b/o/m/n;->N:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v2, Lb/c/b/o/m/n;->d:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v2, Lb/c/b/o/m/c;->b:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v2, Lb/c/b/o/m/n;->U:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v2, Lb/c/b/o/m/k;->b:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v2, Lb/c/b/o/m/j;->b:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v2, Lb/c/b/o/m/n;->S:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v2, Lb/c/b/o/m/a;->c:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v2, Lb/c/b/o/m/n;->b:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v2, Lb/c/b/o/m/b;

    iget-object v4, v0, Lb/c/b/c;->c:Lb/c/b/o/c;

    invoke-direct {v2, v4}, Lb/c/b/o/m/b;-><init>(Lb/c/b/o/c;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v2, Lb/c/b/o/m/g;

    iget-object v4, v0, Lb/c/b/c;->c:Lb/c/b/o/c;

    move v5, p5

    invoke-direct {v2, v4, p5}, Lb/c/b/o/m/g;-><init>(Lb/c/b/o/c;Z)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lb/c/b/o/m/d;

    iget-object v4, v0, Lb/c/b/c;->c:Lb/c/b/o/c;

    invoke-direct {v2, v4}, Lb/c/b/o/m/d;-><init>(Lb/c/b/o/c;)V

    iput-object v2, v0, Lb/c/b/c;->d:Lb/c/b/o/m/d;

    .line 61
    iget-object v2, v0, Lb/c/b/c;->d:Lb/c/b/o/m/d;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v2, Lb/c/b/o/m/n;->Z:Lcom/google/gson/TypeAdapterFactory;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    new-instance v2, Lb/c/b/o/m/i;

    iget-object v4, v0, Lb/c/b/c;->c:Lb/c/b/o/c;

    iget-object v5, v0, Lb/c/b/c;->d:Lb/c/b/o/m/d;

    move-object v6, p2

    invoke-direct {v2, v4, p2, p1, v5}, Lb/c/b/o/m/i;-><init>(Lb/c/b/o/c;Lcom/google/gson/FieldNamingStrategy;Lb/c/b/o/d;Lb/c/b/o/m/d;)V

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lb/c/b/c;->e:Ljava/util/List;

    return-void
.end method

.method public static a(Lb/c/b/l;)Lb/c/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/l;",
            ")",
            "Lb/c/b/m<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 5
    sget-object v0, Lb/c/b/l;->a:Lb/c/b/l;

    if-ne p0, v0, :cond_0

    .line 6
    sget-object p0, Lb/c/b/o/m/n;->t:Lb/c/b/m;

    return-object p0

    .line 7
    :cond_0
    new-instance p0, Lb/c/b/c$c;

    invoke-direct {p0}, Lb/c/b/c$c;-><init>()V

    return-object p0
.end method

.method public static a(Lb/c/b/m;)Lb/c/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/m<",
            "Ljava/lang/Number;",
            ">;)",
            "Lb/c/b/m<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .line 8
    new-instance v0, Lb/c/b/c$d;

    invoke-direct {v0, p0}, Lb/c/b/c$d;-><init>(Lb/c/b/m;)V

    .line 9
    invoke-virtual {v0}, Lb/c/b/m;->a()Lb/c/b/m;

    move-result-object p0

    return-object p0
.end method

.method public static a(D)V
    .locals 2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lb/c/b/m;)Lb/c/b/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/m<",
            "Ljava/lang/Number;",
            ">;)",
            "Lb/c/b/m<",
            "Ljava/util/concurrent/atomic/AtomicLongArray;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lb/c/b/c$e;

    invoke-direct {v0, p0}, Lb/c/b/c$e;-><init>(Lb/c/b/m;)V

    .line 4
    invoke-virtual {v0}, Lb/c/b/m;->a()Lb/c/b/m;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lb/c/b/p/a;)Lb/c/b/m;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/p/a<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lb/c/b/c;->b:Ljava/util/Map;

    if-nez p1, :cond_0

    sget-object v1, Lb/c/b/c;->k:Lb/c/b/p/a;

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/m;

    if-eqz v0, :cond_1

    return-object v0

    .line 11
    :cond_1
    iget-object v0, p0, Lb/c/b/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    iget-object v1, p0, Lb/c/b/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v1, 0x1

    .line 14
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/c/b/c$f;

    if-eqz v2, :cond_3

    return-object v2

    .line 15
    :cond_3
    :try_start_0
    new-instance v2, Lb/c/b/c$f;

    invoke-direct {v2}, Lb/c/b/c$f;-><init>()V

    .line 16
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v3, p0, Lb/c/b/c;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/TypeAdapterFactory;

    .line 18
    invoke-interface {v4, p0, p1}, Lcom/google/gson/TypeAdapterFactory;->create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 19
    invoke-virtual {v2, v4}, Lb/c/b/c$f;->a(Lb/c/b/m;)V

    .line 20
    iget-object v2, p0, Lb/c/b/c;->b:Ljava/util/Map;

    invoke-interface {v2, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 22
    iget-object p1, p0, Lb/c/b/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_5
    return-object v4

    .line 23
    :cond_6
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GSON (2.8.5) cannot handle "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    .line 24
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    .line 25
    iget-object p1, p0, Lb/c/b/c;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_7
    throw v2
.end method

.method public a(Lcom/google/gson/TypeAdapterFactory;Lb/c/b/p/a;)Lb/c/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/TypeAdapterFactory;",
            "Lb/c/b/p/a<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lb/c/b/c;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object p1, p0, Lb/c/b/c;->d:Lb/c/b/o/m/d;

    :cond_0
    const/4 v0, 0x0

    .line 28
    iget-object v1, p0, Lb/c/b/c;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/TypeAdapterFactory;

    if-nez v0, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {v2, p0, p2}, Lcom/google/gson/TypeAdapterFactory;->create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    .line 30
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GSON cannot serialize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/Class;)Lb/c/b/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Lb/c/b/p/a;->a(Ljava/lang/Class;)Lb/c/b/p/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p1

    return-object p1
.end method

.method public final a(Z)Lb/c/b/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lb/c/b/m<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lb/c/b/o/m/n;->v:Lb/c/b/m;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lb/c/b/c$a;

    invoke-direct {p1, p0}, Lb/c/b/c$a;-><init>(Lb/c/b/c;)V

    return-object p1
.end method

.method public a(Ljava/io/Reader;)Lb/c/b/q/a;
    .locals 1

    .line 68
    new-instance v0, Lb/c/b/q/a;

    invoke-direct {v0, p1}, Lb/c/b/q/a;-><init>(Ljava/io/Reader;)V

    .line 69
    iget-boolean p1, p0, Lb/c/b/c;->j:Z

    invoke-virtual {v0, p1}, Lb/c/b/q/a;->b(Z)V

    return-object v0
.end method

.method public a(Ljava/io/Writer;)Lb/c/b/q/c;
    .locals 1

    .line 62
    iget-boolean v0, p0, Lb/c/b/c;->g:Z

    if-eqz v0, :cond_0

    const-string v0, ")]}\'\n"

    .line 63
    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 64
    :cond_0
    new-instance v0, Lb/c/b/q/c;

    invoke-direct {v0, p1}, Lb/c/b/q/c;-><init>(Ljava/io/Writer;)V

    .line 65
    iget-boolean p1, p0, Lb/c/b/c;->i:Z

    if-eqz p1, :cond_1

    const-string p1, "  "

    .line 66
    invoke-virtual {v0, p1}, Lb/c/b/q/c;->b(Ljava/lang/String;)V

    .line 67
    :cond_1
    iget-boolean p1, p0, Lb/c/b/c;->f:Z

    invoke-virtual {v0, p1}, Lb/c/b/q/c;->c(Z)V

    return-object v0
.end method

.method public a(Lb/c/b/e;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/e;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Lb/c/b/o/m/e;

    invoke-direct {v0, p1}, Lb/c/b/o/m/e;-><init>(Lb/c/b/e;)V

    invoke-virtual {p0, v0, p2}, Lb/c/b/c;->a(Lb/c/b/q/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/q/a;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/q/a;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 85
    invoke-virtual {p1}, Lb/c/b/q/a;->j()Z

    move-result v0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p1, v1}, Lb/c/b/q/a;->b(Z)V

    .line 87
    :try_start_0
    invoke-virtual {p1}, Lb/c/b/q/a;->t()Lb/c/b/q/b;

    const/4 v1, 0x0

    .line 88
    invoke-static {p2}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object p2

    .line 89
    invoke-virtual {p0, p2}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p2

    .line 90
    invoke-virtual {p2, p1}, Lb/c/b/m;->a(Lb/c/b/q/a;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    invoke-virtual {p1, v0}, Lb/c/b/q/a;->b(Z)V

    return-object p2

    :catchall_0
    move-exception p2

    goto :goto_0

    :catch_0
    move-exception p2

    .line 92
    :try_start_1
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p2

    .line 93
    new-instance v1, Lb/c/b/k;

    invoke-direct {v1, p2}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception p2

    .line 94
    new-instance v1, Lb/c/b/k;

    invoke-direct {v1, p2}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_3
    move-exception p2

    if-eqz v1, :cond_0

    const/4 p2, 0x0

    .line 95
    invoke-virtual {p1, v0}, Lb/c/b/q/a;->b(Z)V

    return-object p2

    .line 96
    :cond_0
    :try_start_2
    new-instance v1, Lb/c/b/k;

    invoke-direct {v1, p2}, Lb/c/b/k;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 97
    :goto_0
    invoke-virtual {p1, v0}, Lb/c/b/q/a;->b(Z)V

    throw p2
.end method

.method public a(Lb/c/b/e;)Ljava/lang/String;
    .locals 1

    .line 56
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 57
    invoke-virtual {p0, p1, v0}, Lb/c/b/c;->a(Lb/c/b/e;Ljava/lang/Appendable;)V

    .line 58
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    .line 32
    sget-object p1, Lb/c/b/g;->a:Lb/c/b/g;

    invoke-virtual {p0, p1}, Lb/c/b/c;->a(Lb/c/b/e;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 34
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 35
    invoke-virtual {p0, p1, p2, v0}, Lb/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 36
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lb/c/b/e;Lb/c/b/q/c;)V
    .locals 6

    .line 70
    invoke-virtual {p2}, Lb/c/b/q/c;->i()Z

    move-result v0

    const/4 v1, 0x1

    .line 71
    invoke-virtual {p2, v1}, Lb/c/b/q/c;->b(Z)V

    .line 72
    invoke-virtual {p2}, Lb/c/b/q/c;->h()Z

    move-result v1

    .line 73
    iget-boolean v2, p0, Lb/c/b/c;->h:Z

    invoke-virtual {p2, v2}, Lb/c/b/q/c;->a(Z)V

    .line 74
    invoke-virtual {p2}, Lb/c/b/q/c;->g()Z

    move-result v2

    .line 75
    iget-boolean v3, p0, Lb/c/b/c;->f:Z

    invoke-virtual {p2, v3}, Lb/c/b/q/c;->c(Z)V

    .line 76
    :try_start_0
    invoke-static {p1, p2}, Lb/c/b/o/k;->a(Lb/c/b/e;Lb/c/b/q/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    invoke-virtual {p2, v0}, Lb/c/b/q/c;->b(Z)V

    .line 78
    invoke-virtual {p2, v1}, Lb/c/b/q/c;->a(Z)V

    .line 79
    invoke-virtual {p2, v2}, Lb/c/b/q/c;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 80
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_1
    move-exception p1

    .line 81
    new-instance v3, Lb/c/b/f;

    invoke-direct {v3, p1}, Lb/c/b/f;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    invoke-virtual {p2, v0}, Lb/c/b/q/c;->b(Z)V

    .line 83
    invoke-virtual {p2, v1}, Lb/c/b/q/c;->a(Z)V

    .line 84
    invoke-virtual {p2, v2}, Lb/c/b/q/c;->c(Z)V

    throw p1
.end method

.method public a(Lb/c/b/e;Ljava/lang/Appendable;)V
    .locals 0

    .line 59
    :try_start_0
    invoke-static {p2}, Lb/c/b/o/k;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p2

    invoke-virtual {p0, p2}, Lb/c/b/c;->a(Ljava/io/Writer;)Lb/c/b/q/c;

    move-result-object p2

    .line 60
    invoke-virtual {p0, p1, p2}, Lb/c/b/c;->a(Lb/c/b/e;Lb/c/b/q/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 61
    new-instance p2, Lb/c/b/f;

    invoke-direct {p2, p1}, Lb/c/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lb/c/b/q/c;)V
    .locals 5

    .line 40
    invoke-static {p2}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object p2

    invoke-virtual {p0, p2}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object p2

    .line 41
    invoke-virtual {p3}, Lb/c/b/q/c;->i()Z

    move-result v0

    const/4 v1, 0x1

    .line 42
    invoke-virtual {p3, v1}, Lb/c/b/q/c;->b(Z)V

    .line 43
    invoke-virtual {p3}, Lb/c/b/q/c;->h()Z

    move-result v1

    .line 44
    iget-boolean v2, p0, Lb/c/b/c;->h:Z

    invoke-virtual {p3, v2}, Lb/c/b/q/c;->a(Z)V

    .line 45
    invoke-virtual {p3}, Lb/c/b/q/c;->g()Z

    move-result v2

    .line 46
    iget-boolean v3, p0, Lb/c/b/c;->f:Z

    invoke-virtual {p3, v3}, Lb/c/b/q/c;->c(Z)V

    .line 47
    :try_start_0
    invoke-virtual {p2, p3, p1}, Lb/c/b/m;->a(Lb/c/b/q/c;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    invoke-virtual {p3, v0}, Lb/c/b/q/c;->b(Z)V

    .line 49
    invoke-virtual {p3, v1}, Lb/c/b/q/c;->a(Z)V

    .line 50
    invoke-virtual {p3, v2}, Lb/c/b/q/c;->c(Z)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    :try_start_1
    new-instance p2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AssertionError (GSON 2.8.5): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 52
    new-instance p2, Lb/c/b/f;

    invoke-direct {p2, p1}, Lb/c/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :goto_0
    invoke-virtual {p3, v0}, Lb/c/b/q/c;->b(Z)V

    .line 54
    invoke-virtual {p3, v1}, Lb/c/b/q/c;->a(Z)V

    .line 55
    invoke-virtual {p3, v2}, Lb/c/b/q/c;->c(Z)V

    throw p1
.end method

.method public a(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 0

    .line 37
    :try_start_0
    invoke-static {p3}, Lb/c/b/o/k;->a(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object p3

    invoke-virtual {p0, p3}, Lb/c/b/c;->a(Ljava/io/Writer;)Lb/c/b/q/c;

    move-result-object p3

    .line 38
    invoke-virtual {p0, p1, p2, p3}, Lb/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lb/c/b/q/c;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 39
    new-instance p2, Lb/c/b/f;

    invoke-direct {p2, p1}, Lb/c/b/f;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public b(Ljava/lang/Object;)Lb/c/b/e;
    .locals 1

    if-nez p1, :cond_0

    .line 5
    sget-object p1, Lb/c/b/g;->a:Lb/c/b/g;

    return-object p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lb/c/b/c;->b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lb/c/b/e;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lb/c/b/e;
    .locals 1

    .line 7
    new-instance v0, Lb/c/b/o/m/f;

    invoke-direct {v0}, Lb/c/b/o/m/f;-><init>()V

    .line 8
    invoke-virtual {p0, p1, p2, v0}, Lb/c/b/c;->a(Ljava/lang/Object;Ljava/lang/reflect/Type;Lb/c/b/q/c;)V

    .line 9
    invoke-virtual {v0}, Lb/c/b/o/m/f;->n()Lb/c/b/e;

    move-result-object p1

    return-object p1
.end method

.method public final b(Z)Lb/c/b/m;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lb/c/b/m<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lb/c/b/o/m/n;->u:Lb/c/b/m;

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Lb/c/b/c$b;

    invoke-direct {p1, p0}, Lb/c/b/c$b;-><init>(Lb/c/b/c;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lb/c/b/c;->f:Z

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",factories:"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/c/b/c;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",instanceCreators:"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/c/b/c;->c:Lb/c/b/o/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
