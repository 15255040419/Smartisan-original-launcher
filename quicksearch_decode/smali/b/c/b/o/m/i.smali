.class public final Lb/c/b/o/m/i;
.super Ljava/lang/Object;
.source "ReflectiveTypeAdapterFactory.java"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/c/b/o/m/i$b;,
        Lb/c/b/o/m/i$c;
    }
.end annotation


# instance fields
.field public final a:Lb/c/b/o/c;

.field public final b:Lcom/google/gson/FieldNamingStrategy;

.field public final c:Lb/c/b/o/d;

.field public final d:Lb/c/b/o/m/d;

.field public final e:Lb/c/b/o/n/b;


# direct methods
.method public constructor <init>(Lb/c/b/o/c;Lcom/google/gson/FieldNamingStrategy;Lb/c/b/o/d;Lb/c/b/o/m/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lb/c/b/o/n/b;->a()Lb/c/b/o/n/b;

    move-result-object v0

    iput-object v0, p0, Lb/c/b/o/m/i;->e:Lb/c/b/o/n/b;

    .line 3
    iput-object p1, p0, Lb/c/b/o/m/i;->a:Lb/c/b/o/c;

    .line 4
    iput-object p2, p0, Lb/c/b/o/m/i;->b:Lcom/google/gson/FieldNamingStrategy;

    .line 5
    iput-object p3, p0, Lb/c/b/o/m/i;->c:Lb/c/b/o/d;

    .line 6
    iput-object p4, p0, Lb/c/b/o/m/i;->d:Lb/c/b/o/m/d;

    return-void
.end method

.method public static a(Ljava/lang/reflect/Field;ZLb/c/b/o/d;)Z
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Lb/c/b/o/d;->a(Ljava/lang/Class;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lb/c/b/o/d;->a(Ljava/lang/reflect/Field;Z)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final a(Lb/c/b/c;Ljava/lang/reflect/Field;Ljava/lang/String;Lb/c/b/p/a;ZZ)Lb/c/b/o/m/i$c;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/String;",
            "Lb/c/b/p/a<",
            "*>;ZZ)",
            "Lb/c/b/o/m/i$c;"
        }
    .end annotation

    move-object v11, p0

    move-object v8, p1

    move-object/from16 v9, p4

    .line 14
    invoke-virtual/range {p4 .. p4}, Lb/c/b/p/a;->a()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lb/c/b/o/j;->a(Ljava/lang/reflect/Type;)Z

    move-result v10

    .line 15
    const-class v0, Lb/c/b/n/b;

    move-object v5, p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb/c/b/n/b;

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, v11, Lb/c/b/o/m/i;->d:Lb/c/b/o/m/d;

    iget-object v2, v11, Lb/c/b/o/m/i;->a:Lb/c/b/o/c;

    invoke-virtual {v1, v2, p1, v9, v0}, Lb/c/b/o/m/d;->a(Lb/c/b/o/c;Lb/c/b/c;Lb/c/b/p/a;Lb/c/b/n/b;)Lb/c/b/m;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move v6, v1

    if-nez v0, :cond_2

    .line 17
    invoke-virtual {p1, v9}, Lb/c/b/c;->a(Lb/c/b/p/a;)Lb/c/b/m;

    move-result-object v0

    :cond_2
    move-object v7, v0

    .line 18
    new-instance v12, Lb/c/b/o/m/i$a;

    move-object v0, v12

    move-object v1, p0

    move-object/from16 v2, p3

    move/from16 v3, p5

    move/from16 v4, p6

    move-object v5, p2

    move-object v8, p1

    move-object/from16 v9, p4

    invoke-direct/range {v0 .. v10}, Lb/c/b/o/m/i$a;-><init>(Lb/c/b/o/m/i;Ljava/lang/String;ZZLjava/lang/reflect/Field;ZLb/c/b/m;Lb/c/b/c;Lb/c/b/p/a;Z)V

    return-object v12
.end method

.method public final a(Ljava/lang/reflect/Field;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    const-class v0, Lb/c/b/n/c;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lb/c/b/n/c;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lb/c/b/o/m/i;->b:Lcom/google/gson/FieldNamingStrategy;

    invoke-interface {v0, p1}, Lcom/google/gson/FieldNamingStrategy;->translateName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    invoke-interface {v0}, Lb/c/b/n/c;->value()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-interface {v0}, Lb/c/b/n/c;->alternate()[Ljava/lang/String;

    move-result-object v0

    .line 8
    array-length v1, v0

    if-nez v1, :cond_1

    .line 9
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    array-length p1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    aget-object v3, v0, v2

    .line 13
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final a(Lb/c/b/c;Lb/c/b/p/a;Ljava/lang/Class;)Ljava/util/Map;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb/c/b/o/m/i$c;",
            ">;"
        }
    .end annotation

    move-object/from16 v7, p0

    .line 19
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v8

    .line 21
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v9

    move-object/from16 v11, p2

    move-object/from16 v10, p3

    .line 22
    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq v10, v0, :cond_7

    .line 23
    invoke-virtual {v10}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v12

    .line 24
    array-length v13, v12

    const/4 v14, 0x0

    move v15, v14

    :goto_1
    if-ge v15, v13, :cond_6

    aget-object v6, v12, v15

    const/4 v0, 0x1

    .line 25
    invoke-virtual {v7, v6, v0}, Lb/c/b/o/m/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v0

    .line 26
    invoke-virtual {v7, v6, v14}, Lb/c/b/o/m/i;->a(Ljava/lang/reflect/Field;Z)Z

    move-result v16

    if-nez v0, :cond_1

    if-nez v16, :cond_1

    goto/16 :goto_5

    .line 27
    :cond_1
    iget-object v1, v7, Lb/c/b/o/m/i;->e:Lb/c/b/o/n/b;

    invoke-virtual {v1, v6}, Lb/c/b/o/n/b;->a(Ljava/lang/reflect/AccessibleObject;)V

    .line 28
    invoke-virtual {v11}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v1, v10, v2}, Lb/c/b/o/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 29
    invoke-virtual {v7, v6}, Lb/c/b/o/m/i;->a(Ljava/lang/reflect/Field;)Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    .line 30
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    move-object v2, v1

    move v3, v14

    :goto_2
    if-ge v3, v4, :cond_4

    .line 31
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v3, :cond_2

    move/from16 v18, v14

    goto :goto_3

    :cond_2
    move/from16 v18, v0

    .line 32
    :goto_3
    invoke-static/range {v17 .. v17}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 p2, v1

    move-object/from16 v1, p1

    move-object v14, v2

    move-object v2, v6

    move/from16 v20, v3

    move-object/from16 v3, p2

    move/from16 v21, v4

    move-object/from16 v4, v19

    move-object/from16 v19, v5

    move/from16 v5, v18

    move-object/from16 v22, v6

    move/from16 v6, v16

    .line 33
    invoke-virtual/range {v0 .. v6}, Lb/c/b/o/m/i;->a(Lb/c/b/c;Ljava/lang/reflect/Field;Ljava/lang/String;Lb/c/b/p/a;ZZ)Lb/c/b/o/m/i$c;

    move-result-object v0

    move-object/from16 v1, p2

    .line 34
    invoke-interface {v8, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/c/b/o/m/i$c;

    if-nez v14, :cond_3

    move-object v2, v0

    goto :goto_4

    :cond_3
    move-object v2, v14

    :goto_4
    add-int/lit8 v3, v20, 0x1

    move/from16 v0, v18

    move-object/from16 v5, v19

    move/from16 v4, v21

    move-object/from16 v6, v22

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move-object v14, v2

    if-nez v14, :cond_5

    :goto_5
    add-int/lit8 v15, v15, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 35
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " declares multiple JSON fields named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v14, Lb/c/b/o/m/i$c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_6
    invoke-virtual {v11}, Lb/c/b/p/a;->b()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lb/c/b/o/b;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lb/c/b/p/a;->a(Ljava/lang/reflect/Type;)Lb/c/b/p/a;

    move-result-object v11

    .line 37
    invoke-virtual {v11}, Lb/c/b/p/a;->a()Ljava/lang/Class;

    move-result-object v10

    goto/16 :goto_0

    :cond_7
    return-object v8
.end method

.method public a(Ljava/lang/reflect/Field;Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/c/b/o/m/i;->c:Lb/c/b/o/d;

    invoke-static {p1, p2, v0}, Lb/c/b/o/m/i;->a(Ljava/lang/reflect/Field;ZLb/c/b/o/d;)Z

    move-result p1

    return p1
.end method

.method public create(Lb/c/b/c;Lb/c/b/p/a;)Lb/c/b/m;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lb/c/b/c;",
            "Lb/c/b/p/a<",
            "TT;>;)",
            "Lb/c/b/m<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lb/c/b/p/a;->a()Ljava/lang/Class;

    move-result-object v0

    .line 2
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lb/c/b/o/m/i;->a:Lb/c/b/o/c;

    invoke-virtual {v1, p2}, Lb/c/b/o/c;->a(Lb/c/b/p/a;)Lcom/google/gson/internal/ObjectConstructor;

    move-result-object v1

    .line 4
    new-instance v2, Lb/c/b/o/m/i$b;

    invoke-virtual {p0, p1, p2, v0}, Lb/c/b/o/m/i;->a(Lb/c/b/c;Lb/c/b/p/a;Ljava/lang/Class;)Ljava/util/Map;

    move-result-object p1

    invoke-direct {v2, v1, p1}, Lb/c/b/o/m/i$b;-><init>(Lcom/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-object v2
.end method
